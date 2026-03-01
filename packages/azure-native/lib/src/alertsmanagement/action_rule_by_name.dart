import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_response.dart';
import 'action_rule_by_name_args.dart';

/// Action rule object containing target scope, conditions and suppression logic
///
/// Uses Azure REST API version 2019-05-05-preview. In version 2.x of the Azure Native provider, it used API version 2019-05-05-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutActionRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var actionRuleByName = new AzureNative.AlertsManagement.ActionRuleByName("actionRuleByName", new()
///     {
///         ActionRuleName = "DailySuppression",
///         Location = "Global",
///         Properties = new AzureNative.AlertsManagement.Inputs.SuppressionArgs
///         {
///             Conditions = new AzureNative.AlertsManagement.Inputs.ConditionsArgs
///             {
///                 MonitorCondition = new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "Fired",
///                     },
///                 },
///                 MonitorService = new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "Platform",
///                         "Application Insights",
///                     },
///                 },
///                 Severity = new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Operator = AzureNative.AlertsManagement.Operator.EqualsValue,
///                     Values = new[]
///                     {
///                         "Sev0",
///                         "Sev2",
///                     },
///                 },
///                 TargetResourceType = new AzureNative.AlertsManagement.Inputs.ConditionArgs
///                 {
///                     Operator = AzureNative.AlertsManagement.Operator.NotEquals,
///                     Values = new[]
///                     {
///                         "Microsoft.Compute/VirtualMachines",
///                     },
///                 },
///             },
///             Description = "Action rule on resource group for daily suppression",
///             Scope = new AzureNative.AlertsManagement.Inputs.ScopeArgs
///             {
///                 ScopeType = AzureNative.AlertsManagement.ScopeType.ResourceGroup,
///                 Values = new[]
///                 {
///                     "/subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg",
///                 },
///             },
///             Status = AzureNative.AlertsManagement.ActionRuleStatus.Enabled,
///             SuppressionConfig = new AzureNative.AlertsManagement.Inputs.SuppressionConfigArgs
///             {
///                 RecurrenceType = AzureNative.AlertsManagement.SuppressionType.Daily,
///                 Schedule = new AzureNative.AlertsManagement.Inputs.SuppressionScheduleArgs
///                 {
///                     EndDate = "12/18/2018",
///                     EndTime = "14:00:00",
///                     StartDate = "12/09/2018",
///                     StartTime = "06:00:00",
///                 },
///             },
///             Type = "Suppression",
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
/// 		_, err := alertsmanagement.NewActionRuleByName(ctx, "actionRuleByName", &alertsmanagement.ActionRuleByNameArgs{
/// 			ActionRuleName: pulumi.String("DailySuppression"),
/// 			Location:       pulumi.String("Global"),
/// 			Properties: &alertsmanagement.SuppressionArgs{
/// 				Conditions: &alertsmanagement.ConditionsArgs{
/// 					MonitorCondition: &alertsmanagement.ConditionArgs{
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Fired"),
/// 						},
/// 					},
/// 					MonitorService: &alertsmanagement.ConditionArgs{
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Platform"),
/// 							pulumi.String("Application Insights"),
/// 						},
/// 					},
/// 					Severity: &alertsmanagement.ConditionArgs{
/// 						Operator: pulumi.String(alertsmanagement.OperatorEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Sev0"),
/// 							pulumi.String("Sev2"),
/// 						},
/// 					},
/// 					TargetResourceType: &alertsmanagement.ConditionArgs{
/// 						Operator: pulumi.String(alertsmanagement.OperatorNotEquals),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Compute/VirtualMachines"),
/// 						},
/// 					},
/// 				},
/// 				Description: pulumi.String("Action rule on resource group for daily suppression"),
/// 				Scope: &alertsmanagement.ScopeArgs{
/// 					ScopeType: pulumi.String(alertsmanagement.ScopeTypeResourceGroup),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg"),
/// 					},
/// 				},
/// 				Status: pulumi.String(alertsmanagement.ActionRuleStatusEnabled),
/// 				SuppressionConfig: &alertsmanagement.SuppressionConfigArgs{
/// 					RecurrenceType: pulumi.String(alertsmanagement.SuppressionTypeDaily),
/// 					Schedule: &alertsmanagement.SuppressionScheduleArgs{
/// 						EndDate:   pulumi.String("12/18/2018"),
/// 						EndTime:   pulumi.String("14:00:00"),
/// 						StartDate: pulumi.String("12/09/2018"),
/// 						StartTime: pulumi.String("06:00:00"),
/// 					},
/// 				},
/// 				Type: pulumi.String("Suppression"),
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
/// import com.pulumi.azurenative.alertsmanagement.ActionRuleByName;
/// import com.pulumi.azurenative.alertsmanagement.ActionRuleByNameArgs;
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
///         var actionRuleByName = new ActionRuleByName("actionRuleByName", ActionRuleByNameArgs.builder()
///             .actionRuleName("DailySuppression")
///             .location("Global")
///             .properties(SuppressionArgs.builder()
///                 .conditions(ConditionsArgs.builder()
///                     .monitorCondition(ConditionArgs.builder()
///                         .operator("Equals")
///                         .values("Fired")
///                         .build())
///                     .monitorService(ConditionArgs.builder()
///                         .operator("Equals")
///                         .values(
///                             "Platform",
///                             "Application Insights")
///                         .build())
///                     .severity(ConditionArgs.builder()
///                         .operator("Equals")
///                         .values(
///                             "Sev0",
///                             "Sev2")
///                         .build())
///                     .targetResourceType(ConditionArgs.builder()
///                         .operator("NotEquals")
///                         .values("Microsoft.Compute/VirtualMachines")
///                         .build())
///                     .build())
///                 .description("Action rule on resource group for daily suppression")
///                 .scope(ScopeArgs.builder()
///                     .scopeType("ResourceGroup")
///                     .values("/subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg")
///                     .build())
///                 .status("Enabled")
///                 .suppressionConfig(SuppressionConfigArgs.builder()
///                     .recurrenceType("Daily")
///                     .schedule(SuppressionScheduleArgs.builder()
///                         .endDate("12/18/2018")
///                         .endTime("14:00:00")
///                         .startDate("12/09/2018")
///                         .startTime("06:00:00")
///                         .build())
///                     .build())
///                 .type("Suppression")
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
/// const actionRuleByName = new azure_native.alertsmanagement.ActionRuleByName("actionRuleByName", {
///     actionRuleName: "DailySuppression",
///     location: "Global",
///     properties: {
///         conditions: {
///             monitorCondition: {
///                 operator: azure_native.alertsmanagement.Operator.Equals,
///                 values: ["Fired"],
///             },
///             monitorService: {
///                 operator: azure_native.alertsmanagement.Operator.Equals,
///                 values: [
///                     "Platform",
///                     "Application Insights",
///                 ],
///             },
///             severity: {
///                 operator: azure_native.alertsmanagement.Operator.Equals,
///                 values: [
///                     "Sev0",
///                     "Sev2",
///                 ],
///             },
///             targetResourceType: {
///                 operator: azure_native.alertsmanagement.Operator.NotEquals,
///                 values: ["Microsoft.Compute/VirtualMachines"],
///             },
///         },
///         description: "Action rule on resource group for daily suppression",
///         scope: {
///             scopeType: azure_native.alertsmanagement.ScopeType.ResourceGroup,
///             values: ["/subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg"],
///         },
///         status: azure_native.alertsmanagement.ActionRuleStatus.Enabled,
///         suppressionConfig: {
///             recurrenceType: azure_native.alertsmanagement.SuppressionType.Daily,
///             schedule: {
///                 endDate: "12/18/2018",
///                 endTime: "14:00:00",
///                 startDate: "12/09/2018",
///                 startTime: "06:00:00",
///             },
///         },
///         type: "Suppression",
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
/// action_rule_by_name = azure_native.alertsmanagement.ActionRuleByName("actionRuleByName",
///     action_rule_name="DailySuppression",
///     location="Global",
///     properties={
///         "conditions": {
///             "monitor_condition": {
///                 "operator": azure_native.alertsmanagement.Operator.EQUALS,
///                 "values": ["Fired"],
///             },
///             "monitor_service": {
///                 "operator": azure_native.alertsmanagement.Operator.EQUALS,
///                 "values": [
///                     "Platform",
///                     "Application Insights",
///                 ],
///             },
///             "severity": {
///                 "operator": azure_native.alertsmanagement.Operator.EQUALS,
///                 "values": [
///                     "Sev0",
///                     "Sev2",
///                 ],
///             },
///             "target_resource_type": {
///                 "operator": azure_native.alertsmanagement.Operator.NOT_EQUALS,
///                 "values": ["Microsoft.Compute/VirtualMachines"],
///             },
///         },
///         "description": "Action rule on resource group for daily suppression",
///         "scope": {
///             "scope_type": azure_native.alertsmanagement.ScopeType.RESOURCE_GROUP,
///             "values": ["/subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg"],
///         },
///         "status": azure_native.alertsmanagement.ActionRuleStatus.ENABLED,
///         "suppression_config": {
///             "recurrence_type": azure_native.alertsmanagement.SuppressionType.DAILY,
///             "schedule": {
///                 "end_date": "12/18/2018",
///                 "end_time": "14:00:00",
///                 "start_date": "12/09/2018",
///                 "start_time": "06:00:00",
///             },
///         },
///         "type": "Suppression",
///     },
///     resource_group_name="alertscorrelationrg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   actionRuleByName:
///     type: azure-native:alertsmanagement:ActionRuleByName
///     properties:
///       actionRuleName: DailySuppression
///       location: Global
///       properties:
///         conditions:
///           monitorCondition:
///             operator: Equals
///             values:
///               - Fired
///           monitorService:
///             operator: Equals
///             values:
///               - Platform
///               - Application Insights
///           severity:
///             operator: Equals
///             values:
///               - Sev0
///               - Sev2
///           targetResourceType:
///             operator: NotEquals
///             values:
///               - Microsoft.Compute/VirtualMachines
///         description: Action rule on resource group for daily suppression
///         scope:
///           scopeType: ResourceGroup
///           values:
///             - /subscriptions/1e3ff1c0-771a-4119-a03b-be82a51e232d/resourceGroups/alertscorrelationrg
///         status: Enabled
///         suppressionConfig:
///           recurrenceType: Daily
///           schedule:
///             endDate: 12/18/2018
///             endTime: 14:00:00
///             startDate: 12/09/2018
///             startTime: 06:00:00
///         type: Suppression
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
/// $ pulumi import azure-native:alertsmanagement:ActionRuleByName DailySuppression /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AlertsManagement/actionRules/{actionRuleName}
/// ```
class ActionRuleByName extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// action rule properties
  late final pulumi.Output<ActionGroupResponse> properties;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ActionRuleByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionRuleByName]. {@macro pulumi_alertsmanagement_action_rule_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionRuleByName(
    String name, {
    ActionRuleByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:alertsmanagement:ActionRuleByName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ActionGroupResponse>('properties');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
