<cfscript>
	// usage:
	//		<reactor:save bean="thisTask" />
	if (fb_.verbInfo.executionMode is "start") {
		// validate attributes
		// bean - string
		if (not structKeyExists(fb_.verbInfo.attributes,"bean")) {
			fb_throw("fusebox.badGrammar.requiredAttributeMissing",
						"Required attribute is missing",
						"The attribute 'bean' is required, for a 'save' verb in fuseaction #fb_.verbInfo.circuit#.#fb_.verbInfo.fuseaction#.");
		}
		
		// generate code:
		fb_appendLine('<cfset #fb_.verbInfo.attributes.bean#.save() />');
		fb_appendLine('<cfset myFusebox.trace("Reactor","Saved Record") />');

	} else {
	}
</cfscript>
