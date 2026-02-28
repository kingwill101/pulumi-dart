import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_args.dart';
import 'posture_policy_set.dart';

/// A Posture represents a collection of policy set including its name, state, description
/// and policy sets. A policy set includes set of policies along with their definition.
/// A posture can be created at the organization level.
/// Every update to a deployed posture creates a new posture revision with an updated revision_id.
///
///
/// To get more information about Posture, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/securityposture/rest/v1/Posture)
/// * How-to Guides
/// * [Create and deploy a posture](https://cloud.google.com/security-command-center/docs/how-to-use-security-posture)
///
/// ## Example Usage
///
/// ### Securityposture Posture Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const posture1 = new gcp.securityposture.Posture("posture1", {
///     postureId: "posture_example",
///     parent: "organizations/123456789",
///     location: "global",
///     state: "ACTIVE",
///     description: "a new posture",
///     policySets: [
///         {
///             policySetId: "org_policy_set",
///             description: "set of org policies",
///             policies: [
///                 {
///                     policyId: "canned_org_policy",
///                     constraint: {
///                         orgPolicyConstraint: {
///                             cannedConstraintId: "storage.uniformBucketLevelAccess",
///                             policyRules: [{
///                                 enforce: true,
///                                 condition: {
///                                     description: "condition description",
///                                     expression: "resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')",
///                                     title: "a CEL condition",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     policyId: "custom_org_policy",
///                     constraint: {
///                         orgPolicyConstraintCustom: {
///                             customConstraint: {
///                                 name: "organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade",
///                                 displayName: "Disable GKE auto upgrade",
///                                 description: "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///                                 actionType: "ALLOW",
///                                 condition: "resource.management.autoUpgrade == false",
///                                 methodTypes: [
///                                     "CREATE",
///                                     "UPDATE",
///                                 ],
///                                 resourceTypes: ["container.googleapis.com/NodePool"],
///                             },
///                             policyRules: [{
///                                 enforce: true,
///                                 condition: {
///                                     description: "condition description",
///                                     expression: "resource.matchTagId('tagKeys/key_id','tagValues/value_id')",
///                                     title: "a CEL condition",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///             ],
///         },
///         {
///             policySetId: "sha_policy_set",
///             description: "set of sha policies",
///             policies: [
///                 {
///                     policyId: "sha_builtin_module",
///                     constraint: {
///                         securityHealthAnalyticsModule: {
///                             moduleName: "BIGQUERY_TABLE_CMEK_DISABLED",
///                             moduleEnablementState: "ENABLED",
///                         },
///                     },
///                     description: "enable BIGQUERY_TABLE_CMEK_DISABLED",
///                 },
///                 {
///                     policyId: "sha_custom_module",
///                     constraint: {
///                         securityHealthAnalyticsCustomModule: {
///                             displayName: "custom_SHA_policy",
///                             config: {
///                                 predicate: {
///                                     expression: "resource.rotationPeriod > duration('2592000s')",
///                                 },
///                                 customOutput: {
///                                     properties: [{
///                                         name: "duration",
///                                         valueExpression: {
///                                             expression: "resource.rotationPeriod",
///                                         },
///                                     }],
///                                 },
///                                 resourceSelector: {
///                                     resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
///                                 },
///                                 severity: "LOW",
///                                 description: "Custom Module",
///                                 recommendation: "Testing custom modules",
///                             },
///                             moduleEnablementState: "ENABLED",
///                         },
///                     },
///                 },
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// posture1 = gcp.securityposture.Posture("posture1",
///     posture_id="posture_example",
///     parent="organizations/123456789",
///     location="global",
///     state="ACTIVE",
///     description="a new posture",
///     policy_sets=[
///         {
///             "policy_set_id": "org_policy_set",
///             "description": "set of org policies",
///             "policies": [
///                 {
///                     "policy_id": "canned_org_policy",
///                     "constraint": {
///                         "org_policy_constraint": {
///                             "canned_constraint_id": "storage.uniformBucketLevelAccess",
///                             "policy_rules": [{
///                                 "enforce": True,
///                                 "condition": {
///                                     "description": "condition description",
///                                     "expression": "resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')",
///                                     "title": "a CEL condition",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "policy_id": "custom_org_policy",
///                     "constraint": {
///                         "org_policy_constraint_custom": {
///                             "custom_constraint": {
///                                 "name": "organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade",
///                                 "display_name": "Disable GKE auto upgrade",
///                                 "description": "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///                                 "action_type": "ALLOW",
///                                 "condition": "resource.management.autoUpgrade == false",
///                                 "method_types": [
///                                     "CREATE",
///                                     "UPDATE",
///                                 ],
///                                 "resource_types": ["container.googleapis.com/NodePool"],
///                             },
///                             "policy_rules": [{
///                                 "enforce": True,
///                                 "condition": {
///                                     "description": "condition description",
///                                     "expression": "resource.matchTagId('tagKeys/key_id','tagValues/value_id')",
///                                     "title": "a CEL condition",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///             ],
///         },
///         {
///             "policy_set_id": "sha_policy_set",
///             "description": "set of sha policies",
///             "policies": [
///                 {
///                     "policy_id": "sha_builtin_module",
///                     "constraint": {
///                         "security_health_analytics_module": {
///                             "module_name": "BIGQUERY_TABLE_CMEK_DISABLED",
///                             "module_enablement_state": "ENABLED",
///                         },
///                     },
///                     "description": "enable BIGQUERY_TABLE_CMEK_DISABLED",
///                 },
///                 {
///                     "policy_id": "sha_custom_module",
///                     "constraint": {
///                         "security_health_analytics_custom_module": {
///                             "display_name": "custom_SHA_policy",
///                             "config": {
///                                 "predicate": {
///                                     "expression": "resource.rotationPeriod > duration('2592000s')",
///                                 },
///                                 "custom_output": {
///                                     "properties": [{
///                                         "name": "duration",
///                                         "value_expression": {
///                                             "expression": "resource.rotationPeriod",
///                                         },
///                                     }],
///                                 },
///                                 "resource_selector": {
///                                     "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
///                                 },
///                                 "severity": "LOW",
///                                 "description": "Custom Module",
///                                 "recommendation": "Testing custom modules",
///                             },
///                             "module_enablement_state": "ENABLED",
///                         },
///                     },
///                 },
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var posture1 = new Gcp.SecurityPosture.Posture("posture1", new()
///     {
///         PostureId = "posture_example",
///         Parent = "organizations/123456789",
///         Location = "global",
///         State = "ACTIVE",
///         Description = "a new posture",
///         PolicySets = new[]
///         {
///             new Gcp.SecurityPosture.Inputs.PosturePolicySetArgs
///             {
///                 PolicySetId = "org_policy_set",
///                 Description = "set of org policies",
///                 Policies = new[]
///                 {
///                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyArgs
///                     {
///                         PolicyId = "canned_org_policy",
///                         Constraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintArgs
///                         {
///                             OrgPolicyConstraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintArgs
///                             {
///                                 CannedConstraintId = "storage.uniformBucketLevelAccess",
///                                 PolicyRules = new[]
///                                 {
///                                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleArgs
///                                     {
///                                         Enforce = true,
///                                         Condition = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleConditionArgs
///                                         {
///                                             Description = "condition description",
///                                             Expression = "resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')",
///                                             Title = "a CEL condition",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyArgs
///                     {
///                         PolicyId = "custom_org_policy",
///                         Constraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintArgs
///                         {
///                             OrgPolicyConstraintCustom = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomArgs
///                             {
///                                 CustomConstraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraintArgs
///                                 {
///                                     Name = "organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade",
///                                     DisplayName = "Disable GKE auto upgrade",
///                                     Description = "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///                                     ActionType = "ALLOW",
///                                     Condition = "resource.management.autoUpgrade == false",
///                                     MethodTypes = new[]
///                                     {
///                                         "CREATE",
///                                         "UPDATE",
///                                     },
///                                     ResourceTypes = new[]
///                                     {
///                                         "container.googleapis.com/NodePool",
///                                     },
///                                 },
///                                 PolicyRules = new[]
///                                 {
///                                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleArgs
///                                     {
///                                         Enforce = true,
///                                         Condition = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleConditionArgs
///                                         {
///                                             Description = "condition description",
///                                             Expression = "resource.matchTagId('tagKeys/key_id','tagValues/value_id')",
///                                             Title = "a CEL condition",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.SecurityPosture.Inputs.PosturePolicySetArgs
///             {
///                 PolicySetId = "sha_policy_set",
///                 Description = "set of sha policies",
///                 Policies = new[]
///                 {
///                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyArgs
///                     {
///                         PolicyId = "sha_builtin_module",
///                         Constraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintArgs
///                         {
///                             SecurityHealthAnalyticsModule = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModuleArgs
///                             {
///                                 ModuleName = "BIGQUERY_TABLE_CMEK_DISABLED",
///                                 ModuleEnablementState = "ENABLED",
///                             },
///                         },
///                         Description = "enable BIGQUERY_TABLE_CMEK_DISABLED",
///                     },
///                     new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyArgs
///                     {
///                         PolicyId = "sha_custom_module",
///                         Constraint = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintArgs
///                         {
///                             SecurityHealthAnalyticsCustomModule = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleArgs
///                             {
///                                 DisplayName = "custom_SHA_policy",
///                                 Config = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigArgs
///                                 {
///                                     Predicate = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigPredicateArgs
///                                     {
///                                         Expression = "resource.rotationPeriod > duration('2592000s')",
///                                     },
///                                     CustomOutput = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputArgs
///                                     {
///                                         Properties = new[]
///                                         {
///                                             new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyArgs
///                                             {
///                                                 Name = "duration",
///                                                 ValueExpression = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpressionArgs
///                                                 {
///                                                     Expression = "resource.rotationPeriod",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                     ResourceSelector = new Gcp.SecurityPosture.Inputs.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelectorArgs
///                                     {
///                                         ResourceTypes = new[]
///                                         {
///                                             "cloudkms.googleapis.com/CryptoKey",
///                                         },
///                                     },
///                                     Severity = "LOW",
///                                     Description = "Custom Module",
///                                     Recommendation = "Testing custom modules",
///                                 },
///                                 ModuleEnablementState = "ENABLED",
///                             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securityposture"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityposture.NewPosture(ctx, "posture1", &securityposture.PostureArgs{
/// 			PostureId:   pulumi.String("posture_example"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Location:    pulumi.String("global"),
/// 			State:       pulumi.String("ACTIVE"),
/// 			Description: pulumi.String("a new posture"),
/// 			PolicySets: securityposture.PosturePolicySetArray{
/// 				&securityposture.PosturePolicySetArgs{
/// 					PolicySetId: pulumi.String("org_policy_set"),
/// 					Description: pulumi.String("set of org policies"),
/// 					Policies: securityposture.PosturePolicySetPolicyArray{
/// 						&securityposture.PosturePolicySetPolicyArgs{
/// 							PolicyId: pulumi.String("canned_org_policy"),
/// 							Constraint: &securityposture.PosturePolicySetPolicyConstraintArgs{
/// 								OrgPolicyConstraint: &securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintArgs{
/// 									CannedConstraintId: pulumi.String("storage.uniformBucketLevelAccess"),
/// 									PolicyRules: securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleArray{
/// 										&securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleArgs{
/// 											Enforce: pulumi.Bool(true),
/// 											Condition: &securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleConditionArgs{
/// 												Description: pulumi.String("condition description"),
/// 												Expression:  pulumi.String("resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')"),
/// 												Title:       pulumi.String("a CEL condition"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&securityposture.PosturePolicySetPolicyArgs{
/// 							PolicyId: pulumi.String("custom_org_policy"),
/// 							Constraint: &securityposture.PosturePolicySetPolicyConstraintArgs{
/// 								OrgPolicyConstraintCustom: &securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomArgs{
/// 									CustomConstraint: &securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraintArgs{
/// 										Name:        pulumi.String("organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade"),
/// 										DisplayName: pulumi.String("Disable GKE auto upgrade"),
/// 										Description: pulumi.String("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced."),
/// 										ActionType:  pulumi.String("ALLOW"),
/// 										Condition:   pulumi.String("resource.management.autoUpgrade == false"),
/// 										MethodTypes: pulumi.StringArray{
/// 											pulumi.String("CREATE"),
/// 											pulumi.String("UPDATE"),
/// 										},
/// 										ResourceTypes: pulumi.StringArray{
/// 											pulumi.String("container.googleapis.com/NodePool"),
/// 										},
/// 									},
/// 									PolicyRules: securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleArray{
/// 										&securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleArgs{
/// 											Enforce: pulumi.Bool(true),
/// 											Condition: &securityposture.PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleConditionArgs{
/// 												Description: pulumi.String("condition description"),
/// 												Expression:  pulumi.String("resource.matchTagId('tagKeys/key_id','tagValues/value_id')"),
/// 												Title:       pulumi.String("a CEL condition"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&securityposture.PosturePolicySetArgs{
/// 					PolicySetId: pulumi.String("sha_policy_set"),
/// 					Description: pulumi.String("set of sha policies"),
/// 					Policies: securityposture.PosturePolicySetPolicyArray{
/// 						&securityposture.PosturePolicySetPolicyArgs{
/// 							PolicyId: pulumi.String("sha_builtin_module"),
/// 							Constraint: &securityposture.PosturePolicySetPolicyConstraintArgs{
/// 								SecurityHealthAnalyticsModule: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModuleArgs{
/// 									ModuleName:            pulumi.String("BIGQUERY_TABLE_CMEK_DISABLED"),
/// 									ModuleEnablementState: pulumi.String("ENABLED"),
/// 								},
/// 							},
/// 							Description: pulumi.String("enable BIGQUERY_TABLE_CMEK_DISABLED"),
/// 						},
/// 						&securityposture.PosturePolicySetPolicyArgs{
/// 							PolicyId: pulumi.String("sha_custom_module"),
/// 							Constraint: &securityposture.PosturePolicySetPolicyConstraintArgs{
/// 								SecurityHealthAnalyticsCustomModule: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleArgs{
/// 									DisplayName: pulumi.String("custom_SHA_policy"),
/// 									Config: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigArgs{
/// 										Predicate: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigPredicateArgs{
/// 											Expression: pulumi.String("resource.rotationPeriod > duration('2592000s')"),
/// 										},
/// 										CustomOutput: securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputArgs{
/// 											Properties: securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyArray{
/// 												&securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyArgs{
/// 													Name: pulumi.String("duration"),
/// 													ValueExpression: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpressionArgs{
/// 														Expression: pulumi.String("resource.rotationPeriod"),
/// 													},
/// 												},
/// 											},
/// 										},
/// 										ResourceSelector: &securityposture.PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelectorArgs{
/// 											ResourceTypes: pulumi.StringArray{
/// 												pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// 											},
/// 										},
/// 										Severity:       pulumi.String("LOW"),
/// 										Description:    pulumi.String("Custom Module"),
/// 										Recommendation: pulumi.String("Testing custom modules"),
/// 									},
/// 									ModuleEnablementState: pulumi.String("ENABLED"),
/// 								},
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
/// import com.pulumi.gcp.securityposture.Posture;
/// import com.pulumi.gcp.securityposture.PostureArgs;
/// import com.pulumi.gcp.securityposture.inputs.PosturePolicySetArgs;
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
///         var posture1 = new Posture("posture1", PostureArgs.builder()
///             .postureId("posture_example")
///             .parent("organizations/123456789")
///             .location("global")
///             .state("ACTIVE")
///             .description("a new posture")
///             .policySets(
///                 PosturePolicySetArgs.builder()
///                     .policySetId("org_policy_set")
///                     .description("set of org policies")
///                     .policies(
///                         PosturePolicySetPolicyArgs.builder()
///                             .policyId("canned_org_policy")
///                             .constraint(PosturePolicySetPolicyConstraintArgs.builder()
///                                 .orgPolicyConstraint(PosturePolicySetPolicyConstraintOrgPolicyConstraintArgs.builder()
///                                     .cannedConstraintId("storage.uniformBucketLevelAccess")
///                                     .policyRules(PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleArgs.builder()
///                                         .enforce(true)
///                                         .condition(PosturePolicySetPolicyConstraintOrgPolicyConstraintPolicyRuleConditionArgs.builder()
///                                             .description("condition description")
///                                             .expression("resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')")
///                                             .title("a CEL condition")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         PosturePolicySetPolicyArgs.builder()
///                             .policyId("custom_org_policy")
///                             .constraint(PosturePolicySetPolicyConstraintArgs.builder()
///                                 .orgPolicyConstraintCustom(PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomArgs.builder()
///                                     .customConstraint(PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraintArgs.builder()
///                                         .name("organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade")
///                                         .displayName("Disable GKE auto upgrade")
///                                         .description("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.")
///                                         .actionType("ALLOW")
///                                         .condition("resource.management.autoUpgrade == false")
///                                         .methodTypes(
///                                             "CREATE",
///                                             "UPDATE")
///                                         .resourceTypes("container.googleapis.com/NodePool")
///                                         .build())
///                                     .policyRules(PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleArgs.builder()
///                                         .enforce(true)
///                                         .condition(PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleConditionArgs.builder()
///                                             .description("condition description")
///                                             .expression("resource.matchTagId('tagKeys/key_id','tagValues/value_id')")
///                                             .title("a CEL condition")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                     .build(),
///                 PosturePolicySetArgs.builder()
///                     .policySetId("sha_policy_set")
///                     .description("set of sha policies")
///                     .policies(
///                         PosturePolicySetPolicyArgs.builder()
///                             .policyId("sha_builtin_module")
///                             .constraint(PosturePolicySetPolicyConstraintArgs.builder()
///                                 .securityHealthAnalyticsModule(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModuleArgs.builder()
///                                     .moduleName("BIGQUERY_TABLE_CMEK_DISABLED")
///                                     .moduleEnablementState("ENABLED")
///                                     .build())
///                                 .build())
///                             .description("enable BIGQUERY_TABLE_CMEK_DISABLED")
///                             .build(),
///                         PosturePolicySetPolicyArgs.builder()
///                             .policyId("sha_custom_module")
///                             .constraint(PosturePolicySetPolicyConstraintArgs.builder()
///                                 .securityHealthAnalyticsCustomModule(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleArgs.builder()
///                                     .displayName("custom_SHA_policy")
///                                     .config(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigArgs.builder()
///                                         .predicate(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigPredicateArgs.builder()
///                                             .expression("resource.rotationPeriod > duration('2592000s')")
///                                             .build())
///                                         .customOutput(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputArgs.builder()
///                                             .properties(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyArgs.builder()
///                                                 .name("duration")
///                                                 .valueExpression(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpressionArgs.builder()
///                                                     .expression("resource.rotationPeriod")
///                                                     .build())
///                                                 .build())
///                                             .build())
///                                         .resourceSelector(PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelectorArgs.builder()
///                                             .resourceTypes("cloudkms.googleapis.com/CryptoKey")
///                                             .build())
///                                         .severity("LOW")
///                                         .description("Custom Module")
///                                         .recommendation("Testing custom modules")
///                                         .build())
///                                     .moduleEnablementState("ENABLED")
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   posture1:
///     type: gcp:securityposture:Posture
///     properties:
///       postureId: posture_example
///       parent: organizations/123456789
///       location: global
///       state: ACTIVE
///       description: a new posture
///       policySets:
///         - policySetId: org_policy_set
///           description: set of org policies
///           policies:
///             - policyId: canned_org_policy
///               constraint:
///                 orgPolicyConstraint:
///                   cannedConstraintId: storage.uniformBucketLevelAccess
///                   policyRules:
///                     - enforce: true
///                       condition:
///                         description: condition description
///                         expression: resource.matchTag('org_id/tag_key_short_name,'tag_value_short_name')
///                         title: a CEL condition
///             - policyId: custom_org_policy
///               constraint:
///                 orgPolicyConstraintCustom:
///                   customConstraint:
///                     name: organizations/123456789/customConstraints/custom.disableGkeAutoUpgrade
///                     displayName: Disable GKE auto upgrade
///                     description: Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.
///                     actionType: ALLOW
///                     condition: resource.management.autoUpgrade == false
///                     methodTypes:
///                       - CREATE
///                       - UPDATE
///                     resourceTypes:
///                       - container.googleapis.com/NodePool
///                   policyRules:
///                     - enforce: true
///                       condition:
///                         description: condition description
///                         expression: resource.matchTagId('tagKeys/key_id','tagValues/value_id')
///                         title: a CEL condition
///         - policySetId: sha_policy_set
///           description: set of sha policies
///           policies:
///             - policyId: sha_builtin_module
///               constraint:
///                 securityHealthAnalyticsModule:
///                   moduleName: BIGQUERY_TABLE_CMEK_DISABLED
///                   moduleEnablementState: ENABLED
///               description: enable BIGQUERY_TABLE_CMEK_DISABLED
///             - policyId: sha_custom_module
///               constraint:
///                 securityHealthAnalyticsCustomModule:
///                   displayName: custom_SHA_policy
///                   config:
///                     predicate:
///                       expression: resource.rotationPeriod > duration('2592000s')
///                     customOutput:
///                       properties:
///                         - name: duration
///                           valueExpression:
///                             expression: resource.rotationPeriod
///                     resourceSelector:
///                       resourceTypes:
///                         - cloudkms.googleapis.com/CryptoKey
///                     severity: LOW
///                     description: Custom Module
///                     recommendation: Testing custom modules
///                   moduleEnablementState: ENABLED
/// ```
///
///
/// ## Import
///
/// Posture can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/postures/{{posture_id}}`
///
/// When using the `pulumi import` command, Posture can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securityposture/posture:Posture default {{parent}}/locations/{{location}}/postures/{{posture_id}}
/// ```
class Posture extends pulumi.CustomResource {
  /// Time the Posture was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Description of the posture.
  late final pulumi.Output<String?> description;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// Location of the resource, eg: global.
  late final pulumi.Output<String> location;

  /// Name of the posture.
  late final pulumi.Output<String> name;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final pulumi.Output<String> parent;

  /// List of policy sets for the posture.
  /// Structure is documented below.
  late final pulumi.Output<List<PosturePolicySet>> policySets;

  /// Id of the posture. It is an immutable field.
  late final pulumi.Output<String> postureId;

  /// If set, there are currently changes in flight to the posture.
  late final pulumi.Output<bool> reconciling;

  /// Revision_id of the posture.
  late final pulumi.Output<String> revisionId;

  /// State of the posture. Update to state field should not be triggered along with
  /// with other field updates.
  /// Possible values are: `DEPRECATED`, `DRAFT`, `ACTIVE`.
  late final pulumi.Output<String> state;

  /// Time the Posture was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Posture].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Posture]. {@macro pulumi_securityposture_posture_posture_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Posture(
    String name, {
    PostureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securityposture/posture:Posture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.policySets = registerOutput<List<PosturePolicySet>>('policySets');
    this.postureId = registerOutput<String>('postureId');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionId = registerOutput<String>('revisionId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
