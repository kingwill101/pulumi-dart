import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_args.dart';
import 'prevention_inspect_template_inspect_config.dart';

/// An inspect job template.
///
///
/// To get more information about InspectTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.inspectTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-templates-inspect)
///
/// ## Example Usage
///
/// ### Dlp Inspect Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionInspectTemplate("basic", {
///     parent: "projects/my-project-name",
///     description: "My description",
///     displayName: "display_name",
///     inspectConfig: {
///         infoTypes: [
///             {
///                 name: "EMAIL_ADDRESS",
///             },
///             {
///                 name: "PERSON_NAME",
///             },
///             {
///                 name: "LAST_NAME",
///             },
///             {
///                 name: "DOMAIN_NAME",
///             },
///             {
///                 name: "PHONE_NUMBER",
///             },
///             {
///                 name: "FIRST_NAME",
///             },
///         ],
///         minLikelihood: "UNLIKELY",
///         ruleSets: [
///             {
///                 infoTypes: [{
///                     name: "EMAIL_ADDRESS",
///                 }],
///                 rules: [{
///                     exclusionRule: {
///                         regex: {
///                             pattern: ".+@example.com",
///                         },
///                         matchingType: "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [
///                     {
///                         name: "EMAIL_ADDRESS",
///                     },
///                     {
///                         name: "DOMAIN_NAME",
///                     },
///                     {
///                         name: "PHONE_NUMBER",
///                     },
///                     {
///                         name: "PERSON_NAME",
///                     },
///                     {
///                         name: "FIRST_NAME",
///                     },
///                 ],
///                 rules: [{
///                     exclusionRule: {
///                         dictionary: {
///                             wordList: {
///                                 words: ["TEST"],
///                             },
///                         },
///                         matchingType: "MATCHING_TYPE_PARTIAL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [{
///                     name: "PERSON_NAME",
///                 }],
///                 rules: [{
///                     hotwordRule: {
///                         hotwordRegex: {
///                             pattern: "patient",
///                         },
///                         proximity: {
///                             windowBefore: 50,
///                         },
///                         likelihoodAdjustment: {
///                             fixedLikelihood: "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         limits: {
///             maxFindingsPerItem: 10,
///             maxFindingsPerRequest: 50,
///             maxFindingsPerInfoTypes: [
///                 {
///                     maxFindings: 75,
///                     infoType: {
///                         name: "PERSON_NAME",
///                     },
///                 },
///                 {
///                     maxFindings: 80,
///                     infoType: {
///                         name: "LAST_NAME",
///                     },
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionInspectTemplate("basic",
///     parent="projects/my-project-name",
///     description="My description",
///     display_name="display_name",
///     inspect_config={
///         "info_types": [
///             {
///                 "name": "EMAIL_ADDRESS",
///             },
///             {
///                 "name": "PERSON_NAME",
///             },
///             {
///                 "name": "LAST_NAME",
///             },
///             {
///                 "name": "DOMAIN_NAME",
///             },
///             {
///                 "name": "PHONE_NUMBER",
///             },
///             {
///                 "name": "FIRST_NAME",
///             },
///         ],
///         "min_likelihood": "UNLIKELY",
///         "rule_sets": [
///             {
///                 "info_types": [{
///                     "name": "EMAIL_ADDRESS",
///                 }],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "regex": {
///                             "pattern": ".+@example.com",
///                         },
///                         "matching_type": "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 "info_types": [
///                     {
///                         "name": "EMAIL_ADDRESS",
///                     },
///                     {
///                         "name": "DOMAIN_NAME",
///                     },
///                     {
///                         "name": "PHONE_NUMBER",
///                     },
///                     {
///                         "name": "PERSON_NAME",
///                     },
///                     {
///                         "name": "FIRST_NAME",
///                     },
///                 ],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "dictionary": {
///                             "word_list": {
///                                 "words": ["TEST"],
///                             },
///                         },
///                         "matching_type": "MATCHING_TYPE_PARTIAL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 "info_types": [{
///                     "name": "PERSON_NAME",
///                 }],
///                 "rules": [{
///                     "hotword_rule": {
///                         "hotword_regex": {
///                             "pattern": "patient",
///                         },
///                         "proximity": {
///                             "window_before": 50,
///                         },
///                         "likelihood_adjustment": {
///                             "fixed_likelihood": "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         "limits": {
///             "max_findings_per_item": 10,
///             "max_findings_per_request": 50,
///             "max_findings_per_info_types": [
///                 {
///                     "max_findings": 75,
///                     "info_type": {
///                         "name": "PERSON_NAME",
///                     },
///                 },
///                 {
///                     "max_findings": 80,
///                     "info_type": {
///                         "name": "LAST_NAME",
///                     },
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DataLoss.PreventionInspectTemplate("basic", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "My description",
///         DisplayName = "display_name",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
///         {
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "PERSON_NAME",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "LAST_NAME",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "DOMAIN_NAME",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "PHONE_NUMBER",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "FIRST_NAME",
///                 },
///             },
///             MinLikelihood = "UNLIKELY",
///             RuleSets = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "EMAIL_ADDRESS",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 Regex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs
///                                 {
///                                     Pattern = ".+@example.com",
///                                 },
///                                 MatchingType = "MATCHING_TYPE_FULL_MATCH",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "EMAIL_ADDRESS",
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "DOMAIN_NAME",
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "PHONE_NUMBER",
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "PERSON_NAME",
///                         },
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "FIRST_NAME",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 Dictionary = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryArgs
///                                 {
///                                     WordList = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs
///                                     {
///                                         Words = new[]
///                                         {
///                                             "TEST",
///                                         },
///                                     },
///                                 },
///                                 MatchingType = "MATCHING_TYPE_PARTIAL_MATCH",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "PERSON_NAME",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             HotwordRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs
///                             {
///                                 HotwordRegex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs
///                                 {
///                                     Pattern = "patient",
///                                 },
///                                 Proximity = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs
///                                 {
///                                     WindowBefore = 50,
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             Limits = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsArgs
///             {
///                 MaxFindingsPerItem = 10,
///                 MaxFindingsPerRequest = 50,
///                 MaxFindingsPerInfoTypes = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs
///                     {
///                         MaxFindings = 75,
///                         InfoType = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs
///                         {
///                             Name = "PERSON_NAME",
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs
///                     {
///                         MaxFindings = 80,
///                         InfoType = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs
///                         {
///                             Name = "LAST_NAME",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionInspectTemplate(ctx, "basic", &dataloss.PreventionInspectTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("My description"),
/// 			DisplayName: pulumi.String("display_name"),
/// 			InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// 				InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("PERSON_NAME"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("LAST_NAME"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("DOMAIN_NAME"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("PHONE_NUMBER"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("FIRST_NAME"),
/// 					},
/// 				},
/// 				MinLikelihood: pulumi.String("UNLIKELY"),
/// 				RuleSets: dataloss.PreventionInspectTemplateInspectConfigRuleSetArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("EMAIL_ADDRESS"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									Regex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs{
/// 										Pattern: pulumi.String(".+@example.com"),
/// 									},
/// 									MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("EMAIL_ADDRESS"),
/// 							},
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("DOMAIN_NAME"),
/// 							},
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("PHONE_NUMBER"),
/// 							},
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("PERSON_NAME"),
/// 							},
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("FIRST_NAME"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									Dictionary: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryArgs{
/// 										WordList: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs{
/// 											Words: pulumi.StringArray{
/// 												pulumi.String("TEST"),
/// 											},
/// 										},
/// 									},
/// 									MatchingType: pulumi.String("MATCHING_TYPE_PARTIAL_MATCH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("PERSON_NAME"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								HotwordRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs{
/// 									HotwordRegex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs{
/// 										Pattern: pulumi.String("patient"),
/// 									},
/// 									Proximity: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs{
/// 										WindowBefore: pulumi.Int(50),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Limits: &dataloss.PreventionInspectTemplateInspectConfigLimitsArgs{
/// 					MaxFindingsPerItem:    pulumi.Int(10),
/// 					MaxFindingsPerRequest: pulumi.Int(50),
/// 					MaxFindingsPerInfoTypes: dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArray{
/// 						&dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs{
/// 							MaxFindings: pulumi.Int(75),
/// 							InfoType: &dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs{
/// 								Name: pulumi.String("PERSON_NAME"),
/// 							},
/// 						},
/// 						&dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs{
/// 							MaxFindings: pulumi.Int(80),
/// 							InfoType: &dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs{
/// 								Name: pulumi.String("LAST_NAME"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigLimitsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var basic = new PreventionInspectTemplate("basic", PreventionInspectTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .description("My description")
///             .displayName("display_name")
///             .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
///                 .infoTypes(
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("EMAIL_ADDRESS")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("PERSON_NAME")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("LAST_NAME")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("DOMAIN_NAME")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("PHONE_NUMBER")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("FIRST_NAME")
///                         .build())
///                 .minLikelihood("UNLIKELY")
///                 .ruleSets(
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("EMAIL_ADDRESS")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .regex(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs.builder()
///                                     .pattern(".+@example.com")
///                                     .build())
///                                 .matchingType("MATCHING_TYPE_FULL_MATCH")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(
///                             PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                                 .name("EMAIL_ADDRESS")
///                                 .build(),
///                             PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                                 .name("DOMAIN_NAME")
///                                 .build(),
///                             PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                                 .name("PHONE_NUMBER")
///                                 .build(),
///                             PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                                 .name("PERSON_NAME")
///                                 .build(),
///                             PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                                 .name("FIRST_NAME")
///                                 .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .dictionary(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryArgs.builder()
///                                     .wordList(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordListArgs.builder()
///                                         .words("TEST")
///                                         .build())
///                                     .build())
///                                 .matchingType("MATCHING_TYPE_PARTIAL_MATCH")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("PERSON_NAME")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .hotwordRule(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs.builder()
///                                 .hotwordRegex(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs.builder()
///                                     .pattern("patient")
///                                     .build())
///                                 .proximity(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs.builder()
///                                     .windowBefore(50)
///                                     .build())
///                                 .likelihoodAdjustment(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
///                                     .fixedLikelihood("VERY_LIKELY")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .limits(PreventionInspectTemplateInspectConfigLimitsArgs.builder()
///                     .maxFindingsPerItem(10)
///                     .maxFindingsPerRequest(50)
///                     .maxFindingsPerInfoTypes(
///                         PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs.builder()
///                             .maxFindings(75)
///                             .infoType(PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs.builder()
///                                 .name("PERSON_NAME")
///                                 .build())
///                             .build(),
///                         PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs.builder()
///                             .maxFindings(80)
///                             .infoType(PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeArgs.builder()
///                                 .name("LAST_NAME")
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataloss:PreventionInspectTemplate
///     properties:
///       parent: projects/my-project-name
///       description: My description
///       displayName: display_name
///       inspectConfig:
///         infoTypes:
///           - name: EMAIL_ADDRESS
///           - name: PERSON_NAME
///           - name: LAST_NAME
///           - name: DOMAIN_NAME
///           - name: PHONE_NUMBER
///           - name: FIRST_NAME
///         minLikelihood: UNLIKELY
///         ruleSets:
///           - infoTypes:
///               - name: EMAIL_ADDRESS
///             rules:
///               - exclusionRule:
///                   regex:
///                     pattern: .+@example.com
///                   matchingType: MATCHING_TYPE_FULL_MATCH
///           - infoTypes:
///               - name: EMAIL_ADDRESS
///               - name: DOMAIN_NAME
///               - name: PHONE_NUMBER
///               - name: PERSON_NAME
///               - name: FIRST_NAME
///             rules:
///               - exclusionRule:
///                   dictionary:
///                     wordList:
///                       words:
///                         - TEST
///                   matchingType: MATCHING_TYPE_PARTIAL_MATCH
///           - infoTypes:
///               - name: PERSON_NAME
///             rules:
///               - hotwordRule:
///                   hotwordRegex:
///                     pattern: patient
///                   proximity:
///                     windowBefore: 50
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///         limits:
///           maxFindingsPerItem: 10
///           maxFindingsPerRequest: 50
///           maxFindingsPerInfoTypes:
///             - maxFindings: '75'
///               infoType:
///                 name: PERSON_NAME
///             - maxFindings: '80'
///               infoType:
///                 name: LAST_NAME
/// ```
///
/// ### Dlp Inspect Template Custom Type
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom = new gcp.dataloss.PreventionInspectTemplate("custom", {
///     parent: "projects/my-project-name",
///     description: "My description",
///     displayName: "display_name",
///     inspectConfig: {
///         customInfoTypes: [{
///             infoType: {
///                 name: "MY_CUSTOM_TYPE",
///             },
///             likelihood: "UNLIKELY",
///             regex: {
///                 pattern: "test*",
///             },
///         }],
///         infoTypes: [{
///             name: "EMAIL_ADDRESS",
///         }],
///         minLikelihood: "UNLIKELY",
///         ruleSets: [
///             {
///                 infoTypes: [{
///                     name: "EMAIL_ADDRESS",
///                 }],
///                 rules: [{
///                     exclusionRule: {
///                         regex: {
///                             pattern: ".+@example.com",
///                         },
///                         matchingType: "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [{
///                     name: "MY_CUSTOM_TYPE",
///                 }],
///                 rules: [{
///                     hotwordRule: {
///                         hotwordRegex: {
///                             pattern: "example*",
///                         },
///                         proximity: {
///                             windowBefore: 50,
///                         },
///                         likelihoodAdjustment: {
///                             fixedLikelihood: "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         limits: {
///             maxFindingsPerItem: 10,
///             maxFindingsPerRequest: 50,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom = gcp.dataloss.PreventionInspectTemplate("custom",
///     parent="projects/my-project-name",
///     description="My description",
///     display_name="display_name",
///     inspect_config={
///         "custom_info_types": [{
///             "info_type": {
///                 "name": "MY_CUSTOM_TYPE",
///             },
///             "likelihood": "UNLIKELY",
///             "regex": {
///                 "pattern": "test*",
///             },
///         }],
///         "info_types": [{
///             "name": "EMAIL_ADDRESS",
///         }],
///         "min_likelihood": "UNLIKELY",
///         "rule_sets": [
///             {
///                 "info_types": [{
///                     "name": "EMAIL_ADDRESS",
///                 }],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "regex": {
///                             "pattern": ".+@example.com",
///                         },
///                         "matching_type": "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 "info_types": [{
///                     "name": "MY_CUSTOM_TYPE",
///                 }],
///                 "rules": [{
///                     "hotword_rule": {
///                         "hotword_regex": {
///                             "pattern": "example*",
///                         },
///                         "proximity": {
///                             "window_before": 50,
///                         },
///                         "likelihood_adjustment": {
///                             "fixed_likelihood": "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         "limits": {
///             "max_findings_per_item": 10,
///             "max_findings_per_request": 50,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom = new Gcp.DataLoss.PreventionInspectTemplate("custom", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "My description",
///         DisplayName = "display_name",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
///         {
///             CustomInfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_CUSTOM_TYPE",
///                     },
///                     Likelihood = "UNLIKELY",
///                     Regex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigCustomInfoTypeRegexArgs
///                     {
///                         Pattern = "test*",
///                     },
///                 },
///             },
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///             },
///             MinLikelihood = "UNLIKELY",
///             RuleSets = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "EMAIL_ADDRESS",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 Regex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs
///                                 {
///                                     Pattern = ".+@example.com",
///                                 },
///                                 MatchingType = "MATCHING_TYPE_FULL_MATCH",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "MY_CUSTOM_TYPE",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             HotwordRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs
///                             {
///                                 HotwordRegex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs
///                                 {
///                                     Pattern = "example*",
///                                 },
///                                 Proximity = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs
///                                 {
///                                     WindowBefore = 50,
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             Limits = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsArgs
///             {
///                 MaxFindingsPerItem = 10,
///                 MaxFindingsPerRequest = 50,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionInspectTemplate(ctx, "custom", &dataloss.PreventionInspectTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("My description"),
/// 			DisplayName: pulumi.String("display_name"),
/// 			InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// 				CustomInfoTypes: dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_CUSTOM_TYPE"),
/// 						},
/// 						Likelihood: pulumi.String("UNLIKELY"),
/// 						Regex: &dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeRegexArgs{
/// 							Pattern: pulumi.String("test*"),
/// 						},
/// 					},
/// 				},
/// 				InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 				},
/// 				MinLikelihood: pulumi.String("UNLIKELY"),
/// 				RuleSets: dataloss.PreventionInspectTemplateInspectConfigRuleSetArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("EMAIL_ADDRESS"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									Regex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs{
/// 										Pattern: pulumi.String(".+@example.com"),
/// 									},
/// 									MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("MY_CUSTOM_TYPE"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								HotwordRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs{
/// 									HotwordRegex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs{
/// 										Pattern: pulumi.String("example*"),
/// 									},
/// 									Proximity: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs{
/// 										WindowBefore: pulumi.Int(50),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Limits: &dataloss.PreventionInspectTemplateInspectConfigLimitsArgs{
/// 					MaxFindingsPerItem:    pulumi.Int(10),
/// 					MaxFindingsPerRequest: pulumi.Int(50),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigLimitsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var custom = new PreventionInspectTemplate("custom", PreventionInspectTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .description("My description")
///             .displayName("display_name")
///             .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
///                 .customInfoTypes(PreventionInspectTemplateInspectConfigCustomInfoTypeArgs.builder()
///                     .infoType(PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                         .name("MY_CUSTOM_TYPE")
///                         .build())
///                     .likelihood("UNLIKELY")
///                     .regex(PreventionInspectTemplateInspectConfigCustomInfoTypeRegexArgs.builder()
///                         .pattern("test*")
///                         .build())
///                     .build())
///                 .infoTypes(PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                     .name("EMAIL_ADDRESS")
///                     .build())
///                 .minLikelihood("UNLIKELY")
///                 .ruleSets(
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("EMAIL_ADDRESS")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .regex(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs.builder()
///                                     .pattern(".+@example.com")
///                                     .build())
///                                 .matchingType("MATCHING_TYPE_FULL_MATCH")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("MY_CUSTOM_TYPE")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .hotwordRule(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs.builder()
///                                 .hotwordRegex(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs.builder()
///                                     .pattern("example*")
///                                     .build())
///                                 .proximity(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs.builder()
///                                     .windowBefore(50)
///                                     .build())
///                                 .likelihoodAdjustment(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
///                                     .fixedLikelihood("VERY_LIKELY")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .limits(PreventionInspectTemplateInspectConfigLimitsArgs.builder()
///                     .maxFindingsPerItem(10)
///                     .maxFindingsPerRequest(50)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom:
///     type: gcp:dataloss:PreventionInspectTemplate
///     properties:
///       parent: projects/my-project-name
///       description: My description
///       displayName: display_name
///       inspectConfig:
///         customInfoTypes:
///           - infoType:
///               name: MY_CUSTOM_TYPE
///             likelihood: UNLIKELY
///             regex:
///               pattern: test*
///         infoTypes:
///           - name: EMAIL_ADDRESS
///         minLikelihood: UNLIKELY
///         ruleSets:
///           - infoTypes:
///               - name: EMAIL_ADDRESS
///             rules:
///               - exclusionRule:
///                   regex:
///                     pattern: .+@example.com
///                   matchingType: MATCHING_TYPE_FULL_MATCH
///           - infoTypes:
///               - name: MY_CUSTOM_TYPE
///             rules:
///               - hotwordRule:
///                   hotwordRegex:
///                     pattern: example*
///                   proximity:
///                     windowBefore: 50
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///         limits:
///           maxFindingsPerItem: 10
///           maxFindingsPerRequest: 50
/// ```
///
/// ### Dlp Inspect Template Custom Type Surrogate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTypeSurrogate = new gcp.dataloss.PreventionInspectTemplate("custom_type_surrogate", {
///     parent: "projects/my-project-name",
///     description: "My description",
///     displayName: "display_name",
///     inspectConfig: {
///         customInfoTypes: [{
///             infoType: {
///                 name: "MY_CUSTOM_TYPE",
///             },
///             likelihood: "UNLIKELY",
///             surrogateType: {},
///         }],
///         infoTypes: [{
///             name: "EMAIL_ADDRESS",
///         }],
///         minLikelihood: "UNLIKELY",
///         ruleSets: [
///             {
///                 infoTypes: [{
///                     name: "EMAIL_ADDRESS",
///                 }],
///                 rules: [{
///                     exclusionRule: {
///                         regex: {
///                             pattern: ".+@example.com",
///                         },
///                         matchingType: "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 infoTypes: [{
///                     name: "MY_CUSTOM_TYPE",
///                 }],
///                 rules: [{
///                     hotwordRule: {
///                         hotwordRegex: {
///                             pattern: "example*",
///                         },
///                         proximity: {
///                             windowBefore: 50,
///                         },
///                         likelihoodAdjustment: {
///                             fixedLikelihood: "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         limits: {
///             maxFindingsPerItem: 10,
///             maxFindingsPerRequest: 50,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_type_surrogate = gcp.dataloss.PreventionInspectTemplate("custom_type_surrogate",
///     parent="projects/my-project-name",
///     description="My description",
///     display_name="display_name",
///     inspect_config={
///         "custom_info_types": [{
///             "info_type": {
///                 "name": "MY_CUSTOM_TYPE",
///             },
///             "likelihood": "UNLIKELY",
///             "surrogate_type": {},
///         }],
///         "info_types": [{
///             "name": "EMAIL_ADDRESS",
///         }],
///         "min_likelihood": "UNLIKELY",
///         "rule_sets": [
///             {
///                 "info_types": [{
///                     "name": "EMAIL_ADDRESS",
///                 }],
///                 "rules": [{
///                     "exclusion_rule": {
///                         "regex": {
///                             "pattern": ".+@example.com",
///                         },
///                         "matching_type": "MATCHING_TYPE_FULL_MATCH",
///                     },
///                 }],
///             },
///             {
///                 "info_types": [{
///                     "name": "MY_CUSTOM_TYPE",
///                 }],
///                 "rules": [{
///                     "hotword_rule": {
///                         "hotword_regex": {
///                             "pattern": "example*",
///                         },
///                         "proximity": {
///                             "window_before": 50,
///                         },
///                         "likelihood_adjustment": {
///                             "fixed_likelihood": "VERY_LIKELY",
///                         },
///                     },
///                 }],
///             },
///         ],
///         "limits": {
///             "max_findings_per_item": 10,
///             "max_findings_per_request": 50,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customTypeSurrogate = new Gcp.DataLoss.PreventionInspectTemplate("custom_type_surrogate", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "My description",
///         DisplayName = "display_name",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
///         {
///             CustomInfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigCustomInfoTypeArgs
///                 {
///                     InfoType = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs
///                     {
///                         Name = "MY_CUSTOM_TYPE",
///                     },
///                     Likelihood = "UNLIKELY",
///                     SurrogateType = null,
///                 },
///             },
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///             },
///             MinLikelihood = "UNLIKELY",
///             RuleSets = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "EMAIL_ADDRESS",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             ExclusionRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs
///                             {
///                                 Regex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs
///                                 {
///                                     Pattern = ".+@example.com",
///                                 },
///                                 MatchingType = "MATCHING_TYPE_FULL_MATCH",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetArgs
///                 {
///                     InfoTypes = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs
///                         {
///                             Name = "MY_CUSTOM_TYPE",
///                         },
///                     },
///                     Rules = new[]
///                     {
///                         new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleArgs
///                         {
///                             HotwordRule = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs
///                             {
///                                 HotwordRegex = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs
///                                 {
///                                     Pattern = "example*",
///                                 },
///                                 Proximity = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs
///                                 {
///                                     WindowBefore = 50,
///                                 },
///                                 LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs
///                                 {
///                                     FixedLikelihood = "VERY_LIKELY",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             Limits = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsArgs
///             {
///                 MaxFindingsPerItem = 10,
///                 MaxFindingsPerRequest = 50,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionInspectTemplate(ctx, "custom_type_surrogate", &dataloss.PreventionInspectTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("My description"),
/// 			DisplayName: pulumi.String("display_name"),
/// 			InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// 				CustomInfoTypes: dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeArgs{
/// 						InfoType: &dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs{
/// 							Name: pulumi.String("MY_CUSTOM_TYPE"),
/// 						},
/// 						Likelihood:    pulumi.String("UNLIKELY"),
/// 						SurrogateType: &dataloss.PreventionInspectTemplateInspectConfigCustomInfoTypeSurrogateTypeArgs{},
/// 					},
/// 				},
/// 				InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 				},
/// 				MinLikelihood: pulumi.String("UNLIKELY"),
/// 				RuleSets: dataloss.PreventionInspectTemplateInspectConfigRuleSetArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("EMAIL_ADDRESS"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								ExclusionRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs{
/// 									Regex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs{
/// 										Pattern: pulumi.String(".+@example.com"),
/// 									},
/// 									MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigRuleSetArgs{
/// 						InfoTypes: dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs{
/// 								Name: pulumi.String("MY_CUSTOM_TYPE"),
/// 							},
/// 						},
/// 						Rules: dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArray{
/// 							&dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleArgs{
/// 								HotwordRule: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs{
/// 									HotwordRegex: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs{
/// 										Pattern: pulumi.String("example*"),
/// 									},
/// 									Proximity: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs{
/// 										WindowBefore: pulumi.Int(50),
/// 									},
/// 									LikelihoodAdjustment: &dataloss.PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs{
/// 										FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Limits: &dataloss.PreventionInspectTemplateInspectConfigLimitsArgs{
/// 					MaxFindingsPerItem:    pulumi.Int(10),
/// 					MaxFindingsPerRequest: pulumi.Int(50),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigLimitsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var customTypeSurrogate = new PreventionInspectTemplate("customTypeSurrogate", PreventionInspectTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .description("My description")
///             .displayName("display_name")
///             .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
///                 .customInfoTypes(PreventionInspectTemplateInspectConfigCustomInfoTypeArgs.builder()
///                     .infoType(PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeArgs.builder()
///                         .name("MY_CUSTOM_TYPE")
///                         .build())
///                     .likelihood("UNLIKELY")
///                     .surrogateType(PreventionInspectTemplateInspectConfigCustomInfoTypeSurrogateTypeArgs.builder()
///                         .build())
///                     .build())
///                 .infoTypes(PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                     .name("EMAIL_ADDRESS")
///                     .build())
///                 .minLikelihood("UNLIKELY")
///                 .ruleSets(
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("EMAIL_ADDRESS")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .exclusionRule(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleArgs.builder()
///                                 .regex(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegexArgs.builder()
///                                     .pattern(".+@example.com")
///                                     .build())
///                                 .matchingType("MATCHING_TYPE_FULL_MATCH")
///                                 .build())
///                             .build())
///                         .build(),
///                     PreventionInspectTemplateInspectConfigRuleSetArgs.builder()
///                         .infoTypes(PreventionInspectTemplateInspectConfigRuleSetInfoTypeArgs.builder()
///                             .name("MY_CUSTOM_TYPE")
///                             .build())
///                         .rules(PreventionInspectTemplateInspectConfigRuleSetRuleArgs.builder()
///                             .hotwordRule(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleArgs.builder()
///                                 .hotwordRegex(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs.builder()
///                                     .pattern("example*")
///                                     .build())
///                                 .proximity(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximityArgs.builder()
///                                     .windowBefore(50)
///                                     .build())
///                                 .likelihoodAdjustment(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
///                                     .fixedLikelihood("VERY_LIKELY")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                 .limits(PreventionInspectTemplateInspectConfigLimitsArgs.builder()
///                     .maxFindingsPerItem(10)
///                     .maxFindingsPerRequest(50)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customTypeSurrogate:
///     type: gcp:dataloss:PreventionInspectTemplate
///     name: custom_type_surrogate
///     properties:
///       parent: projects/my-project-name
///       description: My description
///       displayName: display_name
///       inspectConfig:
///         customInfoTypes:
///           - infoType:
///               name: MY_CUSTOM_TYPE
///             likelihood: UNLIKELY
///             surrogateType: {}
///         infoTypes:
///           - name: EMAIL_ADDRESS
///         minLikelihood: UNLIKELY
///         ruleSets:
///           - infoTypes:
///               - name: EMAIL_ADDRESS
///             rules:
///               - exclusionRule:
///                   regex:
///                     pattern: .+@example.com
///                   matchingType: MATCHING_TYPE_FULL_MATCH
///           - infoTypes:
///               - name: MY_CUSTOM_TYPE
///             rules:
///               - hotwordRule:
///                   hotwordRegex:
///                     pattern: example*
///                   proximity:
///                     windowBefore: 50
///                   likelihoodAdjustment:
///                     fixedLikelihood: VERY_LIKELY
///         limits:
///           maxFindingsPerItem: 10
///           maxFindingsPerRequest: 50
/// ```
///
/// ### Dlp Inspect Template Max Infotype Per Finding Default
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const maxInfotypePerFindingDefault = new gcp.dataloss.PreventionInspectTemplate("max_infotype_per_finding_default", {
///     parent: "projects/my-project-name",
///     inspectConfig: {
///         infoTypes: [
///             {
///                 name: "EMAIL_ADDRESS",
///             },
///             {
///                 name: "PERSON_NAME",
///             },
///         ],
///         minLikelihood: "UNLIKELY",
///         limits: {
///             maxFindingsPerRequest: 333,
///             maxFindingsPerItem: 222,
///             maxFindingsPerInfoTypes: [{
///                 maxFindings: 111,
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// max_infotype_per_finding_default = gcp.dataloss.PreventionInspectTemplate("max_infotype_per_finding_default",
///     parent="projects/my-project-name",
///     inspect_config={
///         "info_types": [
///             {
///                 "name": "EMAIL_ADDRESS",
///             },
///             {
///                 "name": "PERSON_NAME",
///             },
///         ],
///         "min_likelihood": "UNLIKELY",
///         "limits": {
///             "max_findings_per_request": 333,
///             "max_findings_per_item": 222,
///             "max_findings_per_info_types": [{
///                 "max_findings": 111,
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maxInfotypePerFindingDefault = new Gcp.DataLoss.PreventionInspectTemplate("max_infotype_per_finding_default", new()
///     {
///         Parent = "projects/my-project-name",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
///         {
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "PERSON_NAME",
///                 },
///             },
///             MinLikelihood = "UNLIKELY",
///             Limits = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsArgs
///             {
///                 MaxFindingsPerRequest = 333,
///                 MaxFindingsPerItem = 222,
///                 MaxFindingsPerInfoTypes = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs
///                     {
///                         MaxFindings = 111,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionInspectTemplate(ctx, "max_infotype_per_finding_default", &dataloss.PreventionInspectTemplateArgs{
/// 			Parent: pulumi.String("projects/my-project-name"),
/// 			InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// 				InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("PERSON_NAME"),
/// 					},
/// 				},
/// 				MinLikelihood: pulumi.String("UNLIKELY"),
/// 				Limits: &dataloss.PreventionInspectTemplateInspectConfigLimitsArgs{
/// 					MaxFindingsPerRequest: pulumi.Int(333),
/// 					MaxFindingsPerItem:    pulumi.Int(222),
/// 					MaxFindingsPerInfoTypes: dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArray{
/// 						&dataloss.PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs{
/// 							MaxFindings: pulumi.Int(111),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigLimitsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var maxInfotypePerFindingDefault = new PreventionInspectTemplate("maxInfotypePerFindingDefault", PreventionInspectTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
///                 .infoTypes(
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("EMAIL_ADDRESS")
///                         .build(),
///                     PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                         .name("PERSON_NAME")
///                         .build())
///                 .minLikelihood("UNLIKELY")
///                 .limits(PreventionInspectTemplateInspectConfigLimitsArgs.builder()
///                     .maxFindingsPerRequest(333)
///                     .maxFindingsPerItem(222)
///                     .maxFindingsPerInfoTypes(PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeArgs.builder()
///                         .maxFindings(111)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   maxInfotypePerFindingDefault:
///     type: gcp:dataloss:PreventionInspectTemplate
///     name: max_infotype_per_finding_default
///     properties:
///       parent: projects/my-project-name
///       inspectConfig:
///         infoTypes:
///           - name: EMAIL_ADDRESS
///           - name: PERSON_NAME
///         minLikelihood: UNLIKELY
///         limits:
///           maxFindingsPerRequest: 333
///           maxFindingsPerItem: 222
///           maxFindingsPerInfoTypes:
///             - maxFindings: 111
/// ```
///
///
/// ## Import
///
/// InspectTemplate can be imported using any of these accepted formats:
///
/// * `{{parent}}/inspectTemplates/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, InspectTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate default {{parent}}/inspectTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate default {{parent}}/{{name}}
/// ```
class PreventionInspectTemplate extends pulumi.CustomResource {
  /// A description of the inspect template.
  late final pulumi.Output<String?> description;

  /// User set display name of the inspect template.
  late final pulumi.Output<String?> displayName;

  /// The core content of the template.
  /// Structure is documented below.
  late final pulumi.Output<PreventionInspectTemplateInspectConfig?>
      inspectConfig;

  /// The resource name of the inspect template. Set by the server.
  late final pulumi.Output<String> name;

  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  late final pulumi.Output<String> templateId;

  /// Creates a new [PreventionInspectTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreventionInspectTemplate]. {@macro pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreventionInspectTemplate(
    String name, {
    PreventionInspectTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionInspectTemplate:PreventionInspectTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.inspectConfig =
        registerOutput<PreventionInspectTemplateInspectConfig?>(
            'inspectConfig');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.templateId = registerOutput<String>('templateId');
  }
}
