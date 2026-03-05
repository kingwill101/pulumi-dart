import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_by_name_args.dart';
import 'alert_processing_rule_properties_response.dart';
import 'system_data_response.dart';

/// Alert processing rule object containing target scopes, conditions and scheduling logic.
///
/// Uses Azure REST API version 2021-08-08. In version 2.x of the Azure Native provider, it used API version 2021-08-08.
///
/// Other available API versions: 2021-08-08-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a rule that adds an action group to all alerts in a subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "AddActionGroupToSubscription",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.AddActionGroupsArgs
///                 {
///                     ActionGroupIds = new[]
///                     {
///                         "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1",
///                     },
///                     ActionType = "AddActionGroups",
///                 },
///             },
///             Description = "Add ActionGroup1 to all alerts in the subscription",
///             Enabled = true,
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("AddActionGroupToSubscription"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.AddActionGroups{
/// 						ActionGroupIds: []string{
/// 							"/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1",
/// 						},
/// 						ActionType: "AddActionGroups",
/// 					},
/// 				},
/// 				Description: pulumi.String("Add ActionGroup1 to all alerts in the subscription"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("AddActionGroupToSubscription")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(AddActionGroupsArgs.builder()
///                     .actionGroupIds("/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1")
///                     .actionType("AddActionGroups")
///                     .build())
///                 .description("Add ActionGroup1 to all alerts in the subscription")
///                 .enabled(true)
///                 .scopes("/subscriptions/subId1")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "AddActionGroupToSubscription",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionGroupIds: ["/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1"],
///             actionType: "AddActionGroups",
///         }],
///         description: "Add ActionGroup1 to all alerts in the subscription",
///         enabled: true,
///         scopes: ["/subscriptions/subId1"],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="AddActionGroupToSubscription",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_group_ids": ["/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1"],
///             "action_type": "AddActionGroups",
///         }],
///         "description": "Add ActionGroup1 to all alerts in the subscription",
///         "enabled": True,
///         "scopes": ["/subscriptions/subId1"],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: AddActionGroupToSubscription
///       location: Global
///       properties:
///         actions:
///           - actionGroupIds:
///               - /subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/ActionGroup1
///             actionType: AddActionGroups
///         description: Add ActionGroup1 to all alerts in the subscription
///         enabled: true
///         scopes:
///           - /subscriptions/subId1
///       resourceGroupName: alertscorrelationrg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a rule that adds two action groups to all Sev0 and Sev1 alerts in two resource groups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "AddActionGroupsBySeverity",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.AddActionGroupsArgs
///                 {
///                     ActionGroupIds = new[]
///                     {
///                         "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1",
///                         "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2",
///                     },
///                     ActionType = "AddActionGroups",
///                 },
///             },
///             Conditions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Field = AzureNative.AlertsManagement.Field.Severity,
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "sev0",
///                         "sev1",
///                     },
///                 },
///             },
///             Description = "Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups",
///             Enabled = true,
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1/resourceGroups/RGId1",
///                 "/subscriptions/subId1/resourceGroups/RGId2",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("AddActionGroupsBySeverity"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.AddActionGroups{
/// 						ActionGroupIds: []string{
/// 							"/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1",
/// 							"/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2",
/// 						},
/// 						ActionType: "AddActionGroups",
/// 					},
/// 				},
/// 				Conditions: alertsmanagement.ConditionArray{
/// 					&alertsmanagement.ConditionArgs{
/// 						Field:    pulumi.String(alertsmanagement.FieldSeverity),
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("sev0"),
/// 							pulumi.String("sev1"),
/// 						},
/// 					},
/// 				},
/// 				Description: pulumi.String("Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1/resourceGroups/RGId1"),
/// 					pulumi.String("/subscriptions/subId1/resourceGroups/RGId2"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("AddActionGroupsBySeverity")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(AddActionGroupsArgs.builder()
///                     .actionGroupIds(
///                         "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1",
///                         "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2")
///                     .actionType("AddActionGroups")
///                     .build())
///                 .conditions(ConditionArgs.builder()
///                     .field("Severity")
///                     .operator("Equals")
///                     .values(
///                         "sev0",
///                         "sev1")
///                     .build())
///                 .description("Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups")
///                 .enabled(true)
///                 .scopes(
///                     "/subscriptions/subId1/resourceGroups/RGId1",
///                     "/subscriptions/subId1/resourceGroups/RGId2")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "AddActionGroupsBySeverity",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionGroupIds: [
///                 "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1",
///                 "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2",
///             ],
///             actionType: "AddActionGroups",
///         }],
///         conditions: [{
///             field: azure_native.alertsmanagement.Field.Severity,
///             operator: azure_native.alertsmanagement.Operator.Equals,
///             values: [
///                 "sev0",
///                 "sev1",
///             ],
///         }],
///         description: "Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups",
///         enabled: true,
///         scopes: [
///             "/subscriptions/subId1/resourceGroups/RGId1",
///             "/subscriptions/subId1/resourceGroups/RGId2",
///         ],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="AddActionGroupsBySeverity",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_group_ids": [
///                 "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1",
///                 "/subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2",
///             ],
///             "action_type": "AddActionGroups",
///         }],
///         "conditions": [{
///             "field": azure_native.alertsmanagement.Field.SEVERITY,
///             "operator": azure_native.alertsmanagement.Operator.EQUALS,
///             "values": [
///                 "sev0",
///                 "sev1",
///             ],
///         }],
///         "description": "Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups",
///         "enabled": True,
///         "scopes": [
///             "/subscriptions/subId1/resourceGroups/RGId1",
///             "/subscriptions/subId1/resourceGroups/RGId2",
///         ],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: AddActionGroupsBySeverity
///       location: Global
///       properties:
///         actions:
///           - actionGroupIds:
///               - /subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId1
///               - /subscriptions/subId1/resourcegroups/RGId1/providers/microsoft.insights/actiongroups/AGId2
///             actionType: AddActionGroups
///         conditions:
///           - field: Severity
///             operator: Equals
///             values:
///               - sev0
///               - sev1
///         description: Add AGId1 and AGId2 to all Sev0 and Sev1 alerts in these resourceGroups
///         enabled: true
///         scopes:
///           - /subscriptions/subId1/resourceGroups/RGId1
///           - /subscriptions/subId1/resourceGroups/RGId2
///       resourceGroupName: alertscorrelationrg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a rule that removes all action groups from alerts on a specific VM during a one-off maintenance window (1800-2000 at a specific date, Pacific Standard Time)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "RemoveActionGroupsMaintenanceWindow",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.RemoveAllActionGroupsArgs
///                 {
///                     ActionType = "RemoveAllActionGroups",
///                 },
///             },
///             Description = "Removes all ActionGroups from all Alerts on VMName during the maintenance window",
///             Enabled = true,
///             Schedule = new AzureNative.AlertsManagement.Inputs.ScheduleArgs
///             {
///                 EffectiveFrom = "2021-04-15T18:00:00",
///                 EffectiveUntil = "2021-04-15T20:00:00",
///                 TimeZone = "Pacific Standard Time",
///             },
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("RemoveActionGroupsMaintenanceWindow"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.RemoveAllActionGroups{
/// 						ActionType: "RemoveAllActionGroups",
/// 					},
/// 				},
/// 				Description: pulumi.String("Removes all ActionGroups from all Alerts on VMName during the maintenance window"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Schedule: &alertsmanagement.ScheduleArgs{
/// 					EffectiveFrom:  pulumi.String("2021-04-15T18:00:00"),
/// 					EffectiveUntil: pulumi.String("2021-04-15T20:00:00"),
/// 					TimeZone:       pulumi.String("Pacific Standard Time"),
/// 				},
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.ScheduleArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("RemoveActionGroupsMaintenanceWindow")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(RemoveAllActionGroupsArgs.builder()
///                     .actionType("RemoveAllActionGroups")
///                     .build())
///                 .description("Removes all ActionGroups from all Alerts on VMName during the maintenance window")
///                 .enabled(true)
///                 .schedule(ScheduleArgs.builder()
///                     .effectiveFrom("2021-04-15T18:00:00")
///                     .effectiveUntil("2021-04-15T20:00:00")
///                     .timeZone("Pacific Standard Time")
///                     .build())
///                 .scopes("/subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "RemoveActionGroupsMaintenanceWindow",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionType: "RemoveAllActionGroups",
///         }],
///         description: "Removes all ActionGroups from all Alerts on VMName during the maintenance window",
///         enabled: true,
///         schedule: {
///             effectiveFrom: "2021-04-15T18:00:00",
///             effectiveUntil: "2021-04-15T20:00:00",
///             timeZone: "Pacific Standard Time",
///         },
///         scopes: ["/subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName"],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="RemoveActionGroupsMaintenanceWindow",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_type": "RemoveAllActionGroups",
///         }],
///         "description": "Removes all ActionGroups from all Alerts on VMName during the maintenance window",
///         "enabled": True,
///         "schedule": {
///             "effective_from": "2021-04-15T18:00:00",
///             "effective_until": "2021-04-15T20:00:00",
///             "time_zone": "Pacific Standard Time",
///         },
///         "scopes": ["/subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName"],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: RemoveActionGroupsMaintenanceWindow
///       location: Global
///       properties:
///         actions:
///           - actionType: RemoveAllActionGroups
///         description: Removes all ActionGroups from all Alerts on VMName during the maintenance window
///         enabled: true
///         schedule:
///           effectiveFrom: 2021-04-15T18:00:00
///           effectiveUntil: 2021-04-15T20:00:00
///           timeZone: Pacific Standard Time
///         scopes:
///           - /subscriptions/subId1/resourceGroups/RGId1/providers/Microsoft.Compute/virtualMachines/VMName
///       resourceGroupName: alertscorrelationrg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a rule that removes all action groups from all alerts in a subscription coming from a specific alert rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "RemoveActionGroupsSpecificAlertRule",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.RemoveAllActionGroupsArgs
///                 {
///                     ActionType = "RemoveAllActionGroups",
///                 },
///             },
///             Conditions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Field = AzureNative.AlertsManagement.Field.AlertRuleId,
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "/subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName",
///                     },
///                 },
///             },
///             Description = "Removes all ActionGroups from all Alerts that fire on above AlertRule",
///             Enabled = true,
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("RemoveActionGroupsSpecificAlertRule"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.RemoveAllActionGroups{
/// 						ActionType: "RemoveAllActionGroups",
/// 					},
/// 				},
/// 				Conditions: alertsmanagement.ConditionArray{
/// 					&alertsmanagement.ConditionArgs{
/// 						Field:    pulumi.String(alertsmanagement.FieldAlertRuleId),
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName"),
/// 						},
/// 					},
/// 				},
/// 				Description: pulumi.String("Removes all ActionGroups from all Alerts that fire on above AlertRule"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("RemoveActionGroupsSpecificAlertRule")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(RemoveAllActionGroupsArgs.builder()
///                     .actionType("RemoveAllActionGroups")
///                     .build())
///                 .conditions(ConditionArgs.builder()
///                     .field("AlertRuleId")
///                     .operator("Equals")
///                     .values("/subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName")
///                     .build())
///                 .description("Removes all ActionGroups from all Alerts that fire on above AlertRule")
///                 .enabled(true)
///                 .scopes("/subscriptions/subId1")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "RemoveActionGroupsSpecificAlertRule",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionType: "RemoveAllActionGroups",
///         }],
///         conditions: [{
///             field: azure_native.alertsmanagement.Field.AlertRuleId,
///             operator: azure_native.alertsmanagement.Operator.Equals,
///             values: ["/subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName"],
///         }],
///         description: "Removes all ActionGroups from all Alerts that fire on above AlertRule",
///         enabled: true,
///         scopes: ["/subscriptions/subId1"],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="RemoveActionGroupsSpecificAlertRule",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_type": "RemoveAllActionGroups",
///         }],
///         "conditions": [{
///             "field": azure_native.alertsmanagement.Field.ALERT_RULE_ID,
///             "operator": azure_native.alertsmanagement.Operator.EQUALS,
///             "values": ["/subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName"],
///         }],
///         "description": "Removes all ActionGroups from all Alerts that fire on above AlertRule",
///         "enabled": True,
///         "scopes": ["/subscriptions/subId1"],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: RemoveActionGroupsSpecificAlertRule
///       location: Global
///       properties:
///         actions:
///           - actionType: RemoveAllActionGroups
///         conditions:
///           - field: AlertRuleId
///             operator: Equals
///             values:
///               - /subscriptions/suubId1/resourceGroups/Rgid2/providers/microsoft.insights/activityLogAlerts/RuleName
///         description: Removes all ActionGroups from all Alerts that fire on above AlertRule
///         enabled: true
///         scopes:
///           - /subscriptions/subId1
///       resourceGroupName: alertscorrelationrg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a rule that removes all action groups from all alerts on any VM in two resource groups during a recurring maintenance window (2200-0400 every Sat and Sun, India Standard Time)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "RemoveActionGroupsRecurringMaintenance",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.RemoveAllActionGroupsArgs
///                 {
///                     ActionType = "RemoveAllActionGroups",
///                 },
///             },
///             Conditions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Field = AzureNative.AlertsManagement.Field.TargetResourceType,
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "microsoft.compute/virtualmachines",
///                     },
///                 },
///             },
///             Description = "Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance",
///             Enabled = true,
///             Schedule = new AzureNative.AlertsManagement.Inputs.ScheduleArgs
///             {
///                 Recurrences = new[]
///                 {
///                     new AzureNative.AlertsManagement.Inputs.WeeklyRecurrenceArgs
///                     {
///                         DaysOfWeek = new[]
///                         {
///                             AzureNative.AlertsManagement.DaysOfWeek.Saturday,
///                             AzureNative.AlertsManagement.DaysOfWeek.Sunday,
///                         },
///                         EndTime = "04:00:00",
///                         RecurrenceType = "Weekly",
///                         StartTime = "22:00:00",
///                     },
///                 },
///                 TimeZone = "India Standard Time",
///             },
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1/resourceGroups/RGId1",
///                 "/subscriptions/subId1/resourceGroups/RGId2",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("RemoveActionGroupsRecurringMaintenance"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.RemoveAllActionGroups{
/// 						ActionType: "RemoveAllActionGroups",
/// 					},
/// 				},
/// 				Conditions: alertsmanagement.ConditionArray{
/// 					&alertsmanagement.ConditionArgs{
/// 						Field:    pulumi.String(alertsmanagement.FieldTargetResourceType),
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("microsoft.compute/virtualmachines"),
/// 						},
/// 					},
/// 				},
/// 				Description: pulumi.String("Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Schedule: &alertsmanagement.ScheduleArgs{
/// 					Recurrences: pulumi.Array{
/// 						alertsmanagement.WeeklyRecurrence{
/// 							DaysOfWeek: []alertsmanagement.DaysOfWeek{
/// 								alertsmanagement.DaysOfWeekSaturday,
/// 								alertsmanagement.DaysOfWeekSunday,
/// 							},
/// 							EndTime:        "04:00:00",
/// 							RecurrenceType: "Weekly",
/// 							StartTime:      "22:00:00",
/// 						},
/// 					},
/// 					TimeZone: pulumi.String("India Standard Time"),
/// 				},
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1/resourceGroups/RGId1"),
/// 					pulumi.String("/subscriptions/subId1/resourceGroups/RGId2"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.ScheduleArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("RemoveActionGroupsRecurringMaintenance")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(RemoveAllActionGroupsArgs.builder()
///                     .actionType("RemoveAllActionGroups")
///                     .build())
///                 .conditions(ConditionArgs.builder()
///                     .field("TargetResourceType")
///                     .operator("Equals")
///                     .values("microsoft.compute/virtualmachines")
///                     .build())
///                 .description("Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance")
///                 .enabled(true)
///                 .schedule(ScheduleArgs.builder()
///                     .recurrences(WeeklyRecurrenceArgs.builder()
///                         .daysOfWeek(
///                             "Saturday",
///                             "Sunday")
///                         .endTime("04:00:00")
///                         .recurrenceType("Weekly")
///                         .startTime("22:00:00")
///                         .build())
///                     .timeZone("India Standard Time")
///                     .build())
///                 .scopes(
///                     "/subscriptions/subId1/resourceGroups/RGId1",
///                     "/subscriptions/subId1/resourceGroups/RGId2")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "RemoveActionGroupsRecurringMaintenance",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionType: "RemoveAllActionGroups",
///         }],
///         conditions: [{
///             field: azure_native.alertsmanagement.Field.TargetResourceType,
///             operator: azure_native.alertsmanagement.Operator.Equals,
///             values: ["microsoft.compute/virtualmachines"],
///         }],
///         description: "Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance",
///         enabled: true,
///         schedule: {
///             recurrences: [{
///                 daysOfWeek: [
///                     azure_native.alertsmanagement.DaysOfWeek.Saturday,
///                     azure_native.alertsmanagement.DaysOfWeek.Sunday,
///                 ],
///                 endTime: "04:00:00",
///                 recurrenceType: "Weekly",
///                 startTime: "22:00:00",
///             }],
///             timeZone: "India Standard Time",
///         },
///         scopes: [
///             "/subscriptions/subId1/resourceGroups/RGId1",
///             "/subscriptions/subId1/resourceGroups/RGId2",
///         ],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="RemoveActionGroupsRecurringMaintenance",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_type": "RemoveAllActionGroups",
///         }],
///         "conditions": [{
///             "field": azure_native.alertsmanagement.Field.TARGET_RESOURCE_TYPE,
///             "operator": azure_native.alertsmanagement.Operator.EQUALS,
///             "values": ["microsoft.compute/virtualmachines"],
///         }],
///         "description": "Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance",
///         "enabled": True,
///         "schedule": {
///             "recurrences": [{
///                 "days_of_week": [
///                     azure_native.alertsmanagement.DaysOfWeek.SATURDAY,
///                     azure_native.alertsmanagement.DaysOfWeek.SUNDAY,
///                 ],
///                 "end_time": "04:00:00",
///                 "recurrence_type": "Weekly",
///                 "start_time": "22:00:00",
///             }],
///             "time_zone": "India Standard Time",
///         },
///         "scopes": [
///             "/subscriptions/subId1/resourceGroups/RGId1",
///             "/subscriptions/subId1/resourceGroups/RGId2",
///         ],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: RemoveActionGroupsRecurringMaintenance
///       location: Global
///       properties:
///         actions:
///           - actionType: RemoveAllActionGroups
///         conditions:
///           - field: TargetResourceType
///             operator: Equals
///             values:
///               - microsoft.compute/virtualmachines
///         description: Remove all ActionGroups from all Vitual machine Alerts during the recurring maintenance
///         enabled: true
///         schedule:
///           recurrences:
///             - daysOfWeek:
///                 - Saturday
///                 - Sunday
///               endTime: 04:00:00
///               recurrenceType: Weekly
///               startTime: 22:00:00
///           timeZone: India Standard Time
///         scopes:
///           - /subscriptions/subId1/resourceGroups/RGId1
///           - /subscriptions/subId1/resourceGroups/RGId2
///       resourceGroupName: alertscorrelationrg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a rule that removes all action groups outside business hours (Mon-Fri 09:00-17:00, Eastern Standard Time)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertProcessingRuleByName = new AzureNative.AlertsManagement.AlertProcessingRuleByName("alertProcessingRuleByName", new()
///     {
///         AlertProcessingRuleName = "RemoveActionGroupsOutsideBusinessHours",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.AlertProcessingRulePropertiesArgs
///         {
///             Actions = new[]
///             {
///                 new AzureNative.AlertsManagement.Inputs.RemoveAllActionGroupsArgs
///                 {
///                     ActionType = "RemoveAllActionGroups",
///                 },
///             },
///             Description = "Remove all ActionGroups outside business hours",
///             Enabled = true,
///             Schedule = new AzureNative.AlertsManagement.Inputs.ScheduleArgs
///             {
///                 Recurrences =
///                 {
///                     new AzureNative.AlertsManagement.Inputs.DailyRecurrenceArgs
///                     {
///                         EndTime = "09:00:00",
///                         RecurrenceType = "Daily",
///                         StartTime = "17:00:00",
///                     },
///                     new AzureNative.AlertsManagement.Inputs.WeeklyRecurrenceArgs
///                     {
///                         DaysOfWeek = new[]
///                         {
///                             AzureNative.AlertsManagement.DaysOfWeek.Saturday,
///                             AzureNative.AlertsManagement.DaysOfWeek.Sunday,
///                         },
///                         RecurrenceType = "Weekly",
///                     },
///                 },
///                 TimeZone = "Eastern Standard Time",
///             },
///             Scopes = new[]
///             {
///                 "/subscriptions/subId1",
///             },
///         },
///         ResourceGroupName = "alertscorrelationrg",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewAlertProcessingRuleByName(ctx, "alertProcessingRuleByName", &alertsmanagement.AlertProcessingRuleByNameArgs{
/// 			AlertProcessingRuleName: pulumi.String("RemoveActionGroupsOutsideBusinessHours"),
/// 			Location:                pulumi.String("Global"),
/// 			Properties: &alertsmanagement.AlertProcessingRulePropertiesArgs{
/// 				Actions: pulumi.Array{
/// 					alertsmanagement.RemoveAllActionGroups{
/// 						ActionType: "RemoveAllActionGroups",
/// 					},
/// 				},
/// 				Description: pulumi.String("Remove all ActionGroups outside business hours"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Schedule: &alertsmanagement.ScheduleArgs{
/// 					Recurrences: pulumi.Array{
/// 						alertsmanagement.DailyRecurrence{
/// 							EndTime:        "09:00:00",
/// 							RecurrenceType: "Daily",
/// 							StartTime:      "17:00:00",
/// 						},
/// 						alertsmanagement.WeeklyRecurrence{
/// 							DaysOfWeek: []alertsmanagement.DaysOfWeek{
/// 								alertsmanagement.DaysOfWeekSaturday,
/// 								alertsmanagement.DaysOfWeekSunday,
/// 							},
/// 							RecurrenceType: "Weekly",
/// 						},
/// 					},
/// 					TimeZone: pulumi.String("Eastern Standard Time"),
/// 				},
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/subId1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("alertscorrelationrg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.AlertProcessingRuleByNameArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.AlertProcessingRulePropertiesArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.ScheduleArgs;
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
///         var alertProcessingRuleByName = new AlertProcessingRuleByName("alertProcessingRuleByName", AlertProcessingRuleByNameArgs.builder()
///             .alertProcessingRuleName("RemoveActionGroupsOutsideBusinessHours")
///             .location("Global")
///             .properties(AlertProcessingRulePropertiesArgs.builder()
///                 .actions(RemoveAllActionGroupsArgs.builder()
///                     .actionType("RemoveAllActionGroups")
///                     .build())
///                 .description("Remove all ActionGroups outside business hours")
///                 .enabled(true)
///                 .schedule(ScheduleArgs.builder()
///                     .recurrences(
///                         DailyRecurrenceArgs.builder()
///                             .endTime("09:00:00")
///                             .recurrenceType("Daily")
///                             .startTime("17:00:00")
///                             .build(),
///                         WeeklyRecurrenceArgs.builder()
///                             .daysOfWeek(
///                                 "Saturday",
///                                 "Sunday")
///                             .recurrenceType("Weekly")
///                             .build())
///                     .timeZone("Eastern Standard Time")
///                     .build())
///                 .scopes("/subscriptions/subId1")
///                 .build())
///             .resourceGroupName("alertscorrelationrg")
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
/// const alertProcessingRuleByName = new azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName", {
///     alertProcessingRuleName: "RemoveActionGroupsOutsideBusinessHours",
///     location: "Global",
///     properties: {
///         actions: [{
///             actionType: "RemoveAllActionGroups",
///         }],
///         description: "Remove all ActionGroups outside business hours",
///         enabled: true,
///         schedule: {
///             recurrences: [
///                 {
///                     endTime: "09:00:00",
///                     recurrenceType: "Daily",
///                     startTime: "17:00:00",
///                 },
///                 {
///                     daysOfWeek: [
///                         azure_native.alertsmanagement.DaysOfWeek.Saturday,
///                         azure_native.alertsmanagement.DaysOfWeek.Sunday,
///                     ],
///                     recurrenceType: "Weekly",
///                 },
///             ],
///             timeZone: "Eastern Standard Time",
///         },
///         scopes: ["/subscriptions/subId1"],
///     },
///     resourceGroupName: "alertscorrelationrg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// alert_processing_rule_by_name = azure_native.alertsmanagement.AlertProcessingRuleByName("alertProcessingRuleByName",
///     alert_processing_rule_name="RemoveActionGroupsOutsideBusinessHours",
///     location="Global",
///     properties={
///         "actions": [{
///             "action_type": "RemoveAllActionGroups",
///         }],
///         "description": "Remove all ActionGroups outside business hours",
///         "enabled": True,
///         "schedule": {
///             "recurrences": [
///                 {
///                     "end_time": "09:00:00",
///                     "recurrence_type": "Daily",
///                     "start_time": "17:00:00",
///                 },
///                 {
///                     "days_of_week": [
///                         azure_native.alertsmanagement.DaysOfWeek.SATURDAY,
///                         azure_native.alertsmanagement.DaysOfWeek.SUNDAY,
///                     ],
///                     "recurrence_type": "Weekly",
///                 },
///             ],
///             "time_zone": "Eastern Standard Time",
///         },
///         "scopes": ["/subscriptions/subId1"],
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   alertProcessingRuleByName:
///     type: azure-native:alertsmanagement:AlertProcessingRuleByName
///     properties:
///       alertProcessingRuleName: RemoveActionGroupsOutsideBusinessHours
///       location: Global
///       properties:
///         actions:
///           - actionType: RemoveAllActionGroups
///         description: Remove all ActionGroups outside business hours
///         enabled: true
///         schedule:
///           recurrences:
///             - endTime: 09:00:00
///               recurrenceType: Daily
///               startTime: 17:00:00
///             - daysOfWeek:
///                 - Saturday
///                 - Sunday
///               recurrenceType: Weekly
///           timeZone: Eastern Standard Time
///         scopes:
///           - /subscriptions/subId1
///       resourceGroupName: alertscorrelationrg
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
/// $ pulumi import azure-native:alertsmanagement:AlertProcessingRuleByName RemoveActionGroupsOutsideBusinessHours /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AlertsManagement/actionRules/{alertProcessingRuleName}
/// ```
class AlertProcessingRuleByName extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource location
  late final pulumi.Output<String> location;

  /// Azure resource name
  late final pulumi.Output<String> name;

  /// Alert processing rule properties.
  late final pulumi.Output<AlertProcessingRulePropertiesResponse> properties;

  /// Alert processing rule system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [AlertProcessingRuleByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertProcessingRuleByName]. {@macro pulumi_alertsmanagement_alert_processing_rule_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertProcessingRuleByName(
    String name, {
    AlertProcessingRuleByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:alertsmanagement:AlertProcessingRuleByName',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AlertProcessingRulePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertProcessingRulePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
