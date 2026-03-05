import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_list_response.dart';
import 'activity_log_alert_args.dart';
import 'alert_rule_all_of_condition_response.dart';

/// An Activity Log Alert rule resource.
///
/// Uses Azure REST API version 2020-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an Activity Log Alert rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var activityLogAlert = new AzureNative.Monitor.ActivityLogAlert("activityLogAlert", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionListArgs
///         {
///             ActionGroups = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ActionGroupArgs
///                 {
///                     ActionGroupId = "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///                     WebhookProperties =
///                     {
///                         { "sampleWebhookProperty", "SamplePropertyValue" },
///                     },
///                 },
///             },
///         },
///         ActivityLogAlertName = "SampleActivityLogAlertRule",
///         Condition = new AzureNative.Monitor.Inputs.AlertRuleAllOfConditionArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     Equals = "Administrative",
///                     Field = "category",
///                 },
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     Equals = "Error",
///                     Field = "level",
///                 },
///             },
///         },
///         Description = "Description of sample Activity Log Alert rule.",
///         Enabled = true,
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
///         Scopes = new[]
///         {
///             "/subscriptions/187f412d-1758-44d9-b052-169e2564721d",
///         },
///         Tags = null,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewActivityLogAlert(ctx, "activityLogAlert", &monitor.ActivityLogAlertArgs{
/// 			Actions: &monitor.ActionListArgs{
/// 				ActionGroups: monitor.ActionGroupTypeArray{
/// 					&monitor.ActionGroupTypeArgs{
/// 						ActionGroupId: pulumi.String("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup"),
/// 						WebhookProperties: pulumi.StringMap{
/// 							"sampleWebhookProperty": pulumi.String("SamplePropertyValue"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ActivityLogAlertName: pulumi.String("SampleActivityLogAlertRule"),
/// 			Condition: &monitor.AlertRuleAllOfConditionArgs{
/// 				AllOf: monitor.AlertRuleAnyOfOrLeafConditionArray{
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						Equals: pulumi.String("Administrative"),
/// 						Field:  pulumi.String("category"),
/// 					},
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						Equals: pulumi.String("Error"),
/// 						Field:  pulumi.String("level"),
/// 					},
/// 				},
/// 			},
/// 			Description:       pulumi.String("Description of sample Activity Log Alert rule."),
/// 			Enabled:           pulumi.Bool(true),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/187f412d-1758-44d9-b052-169e2564721d"),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.ActivityLogAlert;
/// import com.pulumi.azurenative.monitor.ActivityLogAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionListArgs;
/// import com.pulumi.azurenative.monitor.inputs.AlertRuleAllOfConditionArgs;
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
///         var activityLogAlert = new ActivityLogAlert("activityLogAlert", ActivityLogAlertArgs.builder()
///             .actions(ActionListArgs.builder()
///                 .actionGroups(ActionGroupArgs.builder()
///                     .actionGroupId("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup")
///                     .webhookProperties(Map.of("sampleWebhookProperty", "SamplePropertyValue"))
///                     .build())
///                 .build())
///             .activityLogAlertName("SampleActivityLogAlertRule")
///             .condition(AlertRuleAllOfConditionArgs.builder()
///                 .allOf(
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .equals("Administrative")
///                         .field("category")
///                         .build(),
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .equals("Error")
///                         .field("level")
///                         .build())
///                 .build())
///             .description("Description of sample Activity Log Alert rule.")
///             .enabled(true)
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
///             .scopes("/subscriptions/187f412d-1758-44d9-b052-169e2564721d")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const activityLogAlert = new azure_native.monitor.ActivityLogAlert("activityLogAlert", {
///     actions: {
///         actionGroups: [{
///             actionGroupId: "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             webhookProperties: {
///                 sampleWebhookProperty: "SamplePropertyValue",
///             },
///         }],
///     },
///     activityLogAlertName: "SampleActivityLogAlertRule",
///     condition: {
///         allOf: [
///             {
///                 equals: "Administrative",
///                 field: "category",
///             },
///             {
///                 equals: "Error",
///                 field: "level",
///             },
///         ],
///     },
///     description: "Description of sample Activity Log Alert rule.",
///     enabled: true,
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
///     scopes: ["/subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// activity_log_alert = azure_native.monitor.ActivityLogAlert("activityLogAlert",
///     actions={
///         "action_groups": [{
///             "action_group_id": "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             "webhook_properties": {
///                 "sampleWebhookProperty": "SamplePropertyValue",
///             },
///         }],
///     },
///     activity_log_alert_name="SampleActivityLogAlertRule",
///     condition={
///         "all_of": [
///             {
///                 "equals": "Administrative",
///                 "field": "category",
///             },
///             {
///                 "equals": "Error",
///                 "field": "level",
///             },
///         ],
///     },
///     description="Description of sample Activity Log Alert rule.",
///     enabled=True,
///     location="Global",
///     resource_group_name="MyResourceGroup",
///     scopes=["/subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   activityLogAlert:
///     type: azure-native:monitor:ActivityLogAlert
///     properties:
///       actions:
///         actionGroups:
///           - actionGroupId: /subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup
///             webhookProperties:
///               sampleWebhookProperty: SamplePropertyValue
///       activityLogAlertName: SampleActivityLogAlertRule
///       condition:
///         allOf:
///           - equals: Administrative
///             field: category
///           - equals: Error
///             field: level
///       description: Description of sample Activity Log Alert rule.
///       enabled: true
///       location: Global
///       resourceGroupName: MyResourceGroup
///       scopes:
///         - /subscriptions/187f412d-1758-44d9-b052-169e2564721d
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an Activity Log Alert rule with 'anyOf' condition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var activityLogAlert = new AzureNative.Monitor.ActivityLogAlert("activityLogAlert", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionListArgs
///         {
///             ActionGroups = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ActionGroupArgs
///                 {
///                     ActionGroupId = "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///                     WebhookProperties =
///                     {
///                         { "sampleWebhookProperty", "SamplePropertyValue" },
///                     },
///                 },
///             },
///         },
///         ActivityLogAlertName = "SampleActivityLogAlertRuleWithAnyOfCondition",
///         Condition = new AzureNative.Monitor.Inputs.AlertRuleAllOfConditionArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     Equals = "ServiceHealth",
///                     Field = "category",
///                 },
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     AnyOf = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.AlertRuleLeafConditionArgs
///                         {
///                             Equals = "Incident",
///                             Field = "properties.incidentType",
///                         },
///                         new AzureNative.Monitor.Inputs.AlertRuleLeafConditionArgs
///                         {
///                             Equals = "Maintenance",
///                             Field = "properties.incidentType",
///                         },
///                     },
///                 },
///             },
///         },
///         Description = "Description of sample Activity Log Alert rule with 'anyOf' condition.",
///         Enabled = true,
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
///         Scopes = new[]
///         {
///             "subscriptions/187f412d-1758-44d9-b052-169e2564721d",
///         },
///         Tags = null,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewActivityLogAlert(ctx, "activityLogAlert", &monitor.ActivityLogAlertArgs{
/// 			Actions: &monitor.ActionListArgs{
/// 				ActionGroups: monitor.ActionGroupTypeArray{
/// 					&monitor.ActionGroupTypeArgs{
/// 						ActionGroupId: pulumi.String("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup"),
/// 						WebhookProperties: pulumi.StringMap{
/// 							"sampleWebhookProperty": pulumi.String("SamplePropertyValue"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ActivityLogAlertName: pulumi.String("SampleActivityLogAlertRuleWithAnyOfCondition"),
/// 			Condition: &monitor.AlertRuleAllOfConditionArgs{
/// 				AllOf: monitor.AlertRuleAnyOfOrLeafConditionArray{
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						Equals: pulumi.String("ServiceHealth"),
/// 						Field:  pulumi.String("category"),
/// 					},
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						AnyOf: monitor.AlertRuleLeafConditionArray{
/// 							&monitor.AlertRuleLeafConditionArgs{
/// 								Equals: pulumi.String("Incident"),
/// 								Field:  pulumi.String("properties.incidentType"),
/// 							},
/// 							&monitor.AlertRuleLeafConditionArgs{
/// 								Equals: pulumi.String("Maintenance"),
/// 								Field:  pulumi.String("properties.incidentType"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Description:       pulumi.String("Description of sample Activity Log Alert rule with 'anyOf' condition."),
/// 			Enabled:           pulumi.Bool(true),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("subscriptions/187f412d-1758-44d9-b052-169e2564721d"),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.ActivityLogAlert;
/// import com.pulumi.azurenative.monitor.ActivityLogAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionListArgs;
/// import com.pulumi.azurenative.monitor.inputs.AlertRuleAllOfConditionArgs;
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
///         var activityLogAlert = new ActivityLogAlert("activityLogAlert", ActivityLogAlertArgs.builder()
///             .actions(ActionListArgs.builder()
///                 .actionGroups(ActionGroupArgs.builder()
///                     .actionGroupId("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup")
///                     .webhookProperties(Map.of("sampleWebhookProperty", "SamplePropertyValue"))
///                     .build())
///                 .build())
///             .activityLogAlertName("SampleActivityLogAlertRuleWithAnyOfCondition")
///             .condition(AlertRuleAllOfConditionArgs.builder()
///                 .allOf(
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .equals("ServiceHealth")
///                         .field("category")
///                         .build(),
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .anyOf(
///                             AlertRuleLeafConditionArgs.builder()
///                                 .equals("Incident")
///                                 .field("properties.incidentType")
///                                 .build(),
///                             AlertRuleLeafConditionArgs.builder()
///                                 .equals("Maintenance")
///                                 .field("properties.incidentType")
///                                 .build())
///                         .build())
///                 .build())
///             .description("Description of sample Activity Log Alert rule with 'anyOf' condition.")
///             .enabled(true)
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
///             .scopes("subscriptions/187f412d-1758-44d9-b052-169e2564721d")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const activityLogAlert = new azure_native.monitor.ActivityLogAlert("activityLogAlert", {
///     actions: {
///         actionGroups: [{
///             actionGroupId: "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             webhookProperties: {
///                 sampleWebhookProperty: "SamplePropertyValue",
///             },
///         }],
///     },
///     activityLogAlertName: "SampleActivityLogAlertRuleWithAnyOfCondition",
///     condition: {
///         allOf: [
///             {
///                 equals: "ServiceHealth",
///                 field: "category",
///             },
///             {
///                 anyOf: [
///                     {
///                         equals: "Incident",
///                         field: "properties.incidentType",
///                     },
///                     {
///                         equals: "Maintenance",
///                         field: "properties.incidentType",
///                     },
///                 ],
///             },
///         ],
///     },
///     description: "Description of sample Activity Log Alert rule with 'anyOf' condition.",
///     enabled: true,
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
///     scopes: ["subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// activity_log_alert = azure_native.monitor.ActivityLogAlert("activityLogAlert",
///     actions={
///         "action_groups": [{
///             "action_group_id": "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             "webhook_properties": {
///                 "sampleWebhookProperty": "SamplePropertyValue",
///             },
///         }],
///     },
///     activity_log_alert_name="SampleActivityLogAlertRuleWithAnyOfCondition",
///     condition={
///         "all_of": [
///             {
///                 "equals": "ServiceHealth",
///                 "field": "category",
///             },
///             {
///                 "any_of": [
///                     {
///                         "equals": "Incident",
///                         "field": "properties.incidentType",
///                     },
///                     {
///                         "equals": "Maintenance",
///                         "field": "properties.incidentType",
///                     },
///                 ],
///             },
///         ],
///     },
///     description="Description of sample Activity Log Alert rule with 'anyOf' condition.",
///     enabled=True,
///     location="Global",
///     resource_group_name="MyResourceGroup",
///     scopes=["subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   activityLogAlert:
///     type: azure-native:monitor:ActivityLogAlert
///     properties:
///       actions:
///         actionGroups:
///           - actionGroupId: /subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup
///             webhookProperties:
///               sampleWebhookProperty: SamplePropertyValue
///       activityLogAlertName: SampleActivityLogAlertRuleWithAnyOfCondition
///       condition:
///         allOf:
///           - equals: ServiceHealth
///             field: category
///           - anyOf:
///               - equals: Incident
///                 field: properties.incidentType
///               - equals: Maintenance
///                 field: properties.incidentType
///       description: Description of sample Activity Log Alert rule with 'anyOf' condition.
///       enabled: true
///       location: Global
///       resourceGroupName: MyResourceGroup
///       scopes:
///         - subscriptions/187f412d-1758-44d9-b052-169e2564721d
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an Activity Log Alert rule with 'containsAny'
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var activityLogAlert = new AzureNative.Monitor.ActivityLogAlert("activityLogAlert", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionListArgs
///         {
///             ActionGroups = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ActionGroupArgs
///                 {
///                     ActionGroupId = "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///                     WebhookProperties =
///                     {
///                         { "sampleWebhookProperty", "SamplePropertyValue" },
///                     },
///                 },
///             },
///         },
///         ActivityLogAlertName = "SampleActivityLogAlertRuleWithContainsAny",
///         Condition = new AzureNative.Monitor.Inputs.AlertRuleAllOfConditionArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     Equals = "ServiceHealth",
///                     Field = "category",
///                 },
///                 new AzureNative.Monitor.Inputs.AlertRuleAnyOfOrLeafConditionArgs
///                 {
///                     ContainsAny = new[]
///                     {
///                         "North Europe",
///                         "West Europe",
///                     },
///                     Field = "properties.impactedServices[*].ImpactedRegions[*].RegionName",
///                 },
///             },
///         },
///         Description = "Description of sample Activity Log Alert rule with 'containsAny'.",
///         Enabled = true,
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
///         Scopes = new[]
///         {
///             "subscriptions/187f412d-1758-44d9-b052-169e2564721d",
///         },
///         Tags = null,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewActivityLogAlert(ctx, "activityLogAlert", &monitor.ActivityLogAlertArgs{
/// 			Actions: &monitor.ActionListArgs{
/// 				ActionGroups: monitor.ActionGroupTypeArray{
/// 					&monitor.ActionGroupTypeArgs{
/// 						ActionGroupId: pulumi.String("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup"),
/// 						WebhookProperties: pulumi.StringMap{
/// 							"sampleWebhookProperty": pulumi.String("SamplePropertyValue"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ActivityLogAlertName: pulumi.String("SampleActivityLogAlertRuleWithContainsAny"),
/// 			Condition: &monitor.AlertRuleAllOfConditionArgs{
/// 				AllOf: monitor.AlertRuleAnyOfOrLeafConditionArray{
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						Equals: pulumi.String("ServiceHealth"),
/// 						Field:  pulumi.String("category"),
/// 					},
/// 					&monitor.AlertRuleAnyOfOrLeafConditionArgs{
/// 						ContainsAny: pulumi.StringArray{
/// 							pulumi.String("North Europe"),
/// 							pulumi.String("West Europe"),
/// 						},
/// 						Field: pulumi.String("properties.impactedServices[*].ImpactedRegions[*].RegionName"),
/// 					},
/// 				},
/// 			},
/// 			Description:       pulumi.String("Description of sample Activity Log Alert rule with 'containsAny'."),
/// 			Enabled:           pulumi.Bool(true),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("subscriptions/187f412d-1758-44d9-b052-169e2564721d"),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.ActivityLogAlert;
/// import com.pulumi.azurenative.monitor.ActivityLogAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionListArgs;
/// import com.pulumi.azurenative.monitor.inputs.AlertRuleAllOfConditionArgs;
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
///         var activityLogAlert = new ActivityLogAlert("activityLogAlert", ActivityLogAlertArgs.builder()
///             .actions(ActionListArgs.builder()
///                 .actionGroups(ActionGroupArgs.builder()
///                     .actionGroupId("/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup")
///                     .webhookProperties(Map.of("sampleWebhookProperty", "SamplePropertyValue"))
///                     .build())
///                 .build())
///             .activityLogAlertName("SampleActivityLogAlertRuleWithContainsAny")
///             .condition(AlertRuleAllOfConditionArgs.builder()
///                 .allOf(
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .equals("ServiceHealth")
///                         .field("category")
///                         .build(),
///                     AlertRuleAnyOfOrLeafConditionArgs.builder()
///                         .containsAny(
///                             "North Europe",
///                             "West Europe")
///                         .field("properties.impactedServices[*].ImpactedRegions[*].RegionName")
///                         .build())
///                 .build())
///             .description("Description of sample Activity Log Alert rule with 'containsAny'.")
///             .enabled(true)
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
///             .scopes("subscriptions/187f412d-1758-44d9-b052-169e2564721d")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const activityLogAlert = new azure_native.monitor.ActivityLogAlert("activityLogAlert", {
///     actions: {
///         actionGroups: [{
///             actionGroupId: "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             webhookProperties: {
///                 sampleWebhookProperty: "SamplePropertyValue",
///             },
///         }],
///     },
///     activityLogAlertName: "SampleActivityLogAlertRuleWithContainsAny",
///     condition: {
///         allOf: [
///             {
///                 equals: "ServiceHealth",
///                 field: "category",
///             },
///             {
///                 containsAny: [
///                     "North Europe",
///                     "West Europe",
///                 ],
///                 field: "properties.impactedServices[*].ImpactedRegions[*].RegionName",
///             },
///         ],
///     },
///     description: "Description of sample Activity Log Alert rule with 'containsAny'.",
///     enabled: true,
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
///     scopes: ["subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// activity_log_alert = azure_native.monitor.ActivityLogAlert("activityLogAlert",
///     actions={
///         "action_groups": [{
///             "action_group_id": "/subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup",
///             "webhook_properties": {
///                 "sampleWebhookProperty": "SamplePropertyValue",
///             },
///         }],
///     },
///     activity_log_alert_name="SampleActivityLogAlertRuleWithContainsAny",
///     condition={
///         "all_of": [
///             {
///                 "equals": "ServiceHealth",
///                 "field": "category",
///             },
///             {
///                 "contains_any": [
///                     "North Europe",
///                     "West Europe",
///                 ],
///                 "field": "properties.impactedServices[*].ImpactedRegions[*].RegionName",
///             },
///         ],
///     },
///     description="Description of sample Activity Log Alert rule with 'containsAny'.",
///     enabled=True,
///     location="Global",
///     resource_group_name="MyResourceGroup",
///     scopes=["subscriptions/187f412d-1758-44d9-b052-169e2564721d"],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   activityLogAlert:
///     type: azure-native:monitor:ActivityLogAlert
///     properties:
///       actions:
///         actionGroups:
///           - actionGroupId: /subscriptions/187f412d-1758-44d9-b052-169e2564721d/resourceGroups/MyResourceGroup/providers/Microsoft.Insights/actionGroups/SampleActionGroup
///             webhookProperties:
///               sampleWebhookProperty: SamplePropertyValue
///       activityLogAlertName: SampleActivityLogAlertRuleWithContainsAny
///       condition:
///         allOf:
///           - equals: ServiceHealth
///             field: category
///           - containsAny:
///               - North Europe
///               - West Europe
///             field: properties.impactedServices[*].ImpactedRegions[*].RegionName
///       description: Description of sample Activity Log Alert rule with 'containsAny'.
///       enabled: true
///       location: Global
///       resourceGroupName: MyResourceGroup
///       scopes:
///         - subscriptions/187f412d-1758-44d9-b052-169e2564721d
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:monitor:ActivityLogAlert SampleActivityLogAlertRuleWithContainsAny /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/activityLogAlerts/{activityLogAlertName}
/// ```
class ActivityLogAlert extends pulumi.CustomResource {
  /// The actions that will activate when the condition is met.
  late final pulumi.Output<ActionListResponse> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The condition that will cause this alert to activate.
  late final pulumi.Output<AlertRuleAllOfConditionResponse> condition;
  /// A description of this Activity Log Alert rule.
  late final pulumi.Output<String?> description;
  /// Indicates whether this Activity Log Alert rule is enabled. If an Activity Log Alert rule is not enabled, then none of its actions will be activated.
  late final pulumi.Output<bool?> enabled;
  /// The location of the resource. Azure Activity Log Alert rules are supported on Global, West Europe and North Europe regions.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// A list of resource IDs that will be used as prefixes. The alert will only apply to Activity Log events with resource IDs that fall under one of these prefixes. This list must include at least one item.
  late final pulumi.Output<List<String>> scopes;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ActivityLogAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActivityLogAlert]. {@macro pulumi_monitor_activity_log_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActivityLogAlert(
    String name, {
    ActivityLogAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:ActivityLogAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<ActionListResponse>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    condition = registerOutput<AlertRuleAllOfConditionResponse>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertRuleAllOfConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>>('scopes');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
