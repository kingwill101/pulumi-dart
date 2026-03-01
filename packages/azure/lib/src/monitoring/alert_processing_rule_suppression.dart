import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_args.dart';
import 'alert_processing_rule_suppression_condition.dart';
import 'alert_processing_rule_suppression_schedule.dart';

/// Manages an Alert Processing Rule which suppress notifications.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAlertProcessingRuleSuppression = new azure.monitoring.AlertProcessingRuleSuppression("example", {
///     name: "example",
///     resourceGroupName: "example",
///     scopes: [example.id],
///     condition: {
///         targetResourceType: {
///             operator: "Equals",
///             values: ["Microsoft.Compute/VirtualMachines"],
///         },
///         severity: {
///             operator: "Equals",
///             values: [
///                 "Sev0",
///                 "Sev1",
///                 "Sev2",
///             ],
///         },
///     },
///     schedule: {
///         effectiveFrom: "2022-01-01T01:02:03",
///         effectiveUntil: "2022-02-02T01:02:03",
///         timeZone: "Pacific Standard Time",
///         recurrence: {
///             dailies: [{
///                 startTime: "17:00:00",
///                 endTime: "09:00:00",
///             }],
///             weeklies: [{
///                 daysOfWeeks: [
///                     "Saturday",
///                     "Sunday",
///                 ],
///             }],
///         },
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_alert_processing_rule_suppression = azure.monitoring.AlertProcessingRuleSuppression("example",
///     name="example",
///     resource_group_name="example",
///     scopes=[example.id],
///     condition={
///         "target_resource_type": {
///             "operator": "Equals",
///             "values": ["Microsoft.Compute/VirtualMachines"],
///         },
///         "severity": {
///             "operator": "Equals",
///             "values": [
///                 "Sev0",
///                 "Sev1",
///                 "Sev2",
///             ],
///         },
///     },
///     schedule={
///         "effective_from": "2022-01-01T01:02:03",
///         "effective_until": "2022-02-02T01:02:03",
///         "time_zone": "Pacific Standard Time",
///         "recurrence": {
///             "dailies": [{
///                 "start_time": "17:00:00",
///                 "end_time": "09:00:00",
///             }],
///             "weeklies": [{
///                 "days_of_weeks": [
///                     "Saturday",
///                     "Sunday",
///                 ],
///             }],
///         },
///     },
///     tags={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAlertProcessingRuleSuppression = new Azure.Monitoring.AlertProcessingRuleSuppression("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Scopes = new[]
///         {
///             example.Id,
///         },
///         Condition = new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionConditionArgs
///         {
///             TargetResourceType = new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionConditionTargetResourceTypeArgs
///             {
///                 Operator = "Equals",
///                 Values = new[]
///                 {
///                     "Microsoft.Compute/VirtualMachines",
///                 },
///             },
///             Severity = new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionConditionSeverityArgs
///             {
///                 Operator = "Equals",
///                 Values = new[]
///                 {
///                     "Sev0",
///                     "Sev1",
///                     "Sev2",
///                 },
///             },
///         },
///         Schedule = new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionScheduleArgs
///         {
///             EffectiveFrom = "2022-01-01T01:02:03",
///             EffectiveUntil = "2022-02-02T01:02:03",
///             TimeZone = "Pacific Standard Time",
///             Recurrence = new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionScheduleRecurrenceArgs
///             {
///                 Dailies = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionScheduleRecurrenceDailyArgs
///                     {
///                         StartTime = "17:00:00",
///                         EndTime = "09:00:00",
///                     },
///                 },
///                 Weeklies = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AlertProcessingRuleSuppressionScheduleRecurrenceWeeklyArgs
///                     {
///                         DaysOfWeeks = new[]
///                         {
///                             "Saturday",
///                             "Sunday",
///                         },
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAlertProcessingRuleSuppression(ctx, "example", &monitoring.AlertProcessingRuleSuppressionArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Scopes: pulumi.StringArray{
/// 				example.ID(),
/// 			},
/// 			Condition: &monitoring.AlertProcessingRuleSuppressionConditionArgs{
/// 				TargetResourceType: &monitoring.AlertProcessingRuleSuppressionConditionTargetResourceTypeArgs{
/// 					Operator: pulumi.String("Equals"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Compute/VirtualMachines"),
/// 					},
/// 				},
/// 				Severity: &monitoring.AlertProcessingRuleSuppressionConditionSeverityArgs{
/// 					Operator: pulumi.String("Equals"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Sev0"),
/// 						pulumi.String("Sev1"),
/// 						pulumi.String("Sev2"),
/// 					},
/// 				},
/// 			},
/// 			Schedule: &monitoring.AlertProcessingRuleSuppressionScheduleArgs{
/// 				EffectiveFrom:  pulumi.String("2022-01-01T01:02:03"),
/// 				EffectiveUntil: pulumi.String("2022-02-02T01:02:03"),
/// 				TimeZone:       pulumi.String("Pacific Standard Time"),
/// 				Recurrence: &monitoring.AlertProcessingRuleSuppressionScheduleRecurrenceArgs{
/// 					Dailies: monitoring.AlertProcessingRuleSuppressionScheduleRecurrenceDailyArray{
/// 						&monitoring.AlertProcessingRuleSuppressionScheduleRecurrenceDailyArgs{
/// 							StartTime: pulumi.String("17:00:00"),
/// 							EndTime:   pulumi.String("09:00:00"),
/// 						},
/// 					},
/// 					Weeklies: monitoring.AlertProcessingRuleSuppressionScheduleRecurrenceWeeklyArray{
/// 						&monitoring.AlertProcessingRuleSuppressionScheduleRecurrenceWeeklyArgs{
/// 							DaysOfWeeks: pulumi.StringArray{
/// 								pulumi.String("Saturday"),
/// 								pulumi.String("Sunday"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.monitoring.AlertProcessingRuleSuppression;
/// import com.pulumi.azure.monitoring.AlertProcessingRuleSuppressionArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleSuppressionConditionArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleSuppressionConditionTargetResourceTypeArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleSuppressionConditionSeverityArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleSuppressionScheduleArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleSuppressionScheduleRecurrenceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAlertProcessingRuleSuppression = new AlertProcessingRuleSuppression("exampleAlertProcessingRuleSuppression", AlertProcessingRuleSuppressionArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .scopes(example.id())
///             .condition(AlertProcessingRuleSuppressionConditionArgs.builder()
///                 .targetResourceType(AlertProcessingRuleSuppressionConditionTargetResourceTypeArgs.builder()
///                     .operator("Equals")
///                     .values("Microsoft.Compute/VirtualMachines")
///                     .build())
///                 .severity(AlertProcessingRuleSuppressionConditionSeverityArgs.builder()
///                     .operator("Equals")
///                     .values(
///                         "Sev0",
///                         "Sev1",
///                         "Sev2")
///                     .build())
///                 .build())
///             .schedule(AlertProcessingRuleSuppressionScheduleArgs.builder()
///                 .effectiveFrom("2022-01-01T01:02:03")
///                 .effectiveUntil("2022-02-02T01:02:03")
///                 .timeZone("Pacific Standard Time")
///                 .recurrence(AlertProcessingRuleSuppressionScheduleRecurrenceArgs.builder()
///                     .dailies(AlertProcessingRuleSuppressionScheduleRecurrenceDailyArgs.builder()
///                         .startTime("17:00:00")
///                         .endTime("09:00:00")
///                         .build())
///                     .weeklies(AlertProcessingRuleSuppressionScheduleRecurrenceWeeklyArgs.builder()
///                         .daysOfWeeks(
///                             "Saturday",
///                             "Sunday")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAlertProcessingRuleSuppression:
///     type: azure:monitoring:AlertProcessingRuleSuppression
///     name: example
///     properties:
///       name: example
///       resourceGroupName: example
///       scopes:
///         - ${example.id}
///       condition:
///         targetResourceType:
///           operator: Equals
///           values:
///             - Microsoft.Compute/VirtualMachines
///         severity:
///           operator: Equals
///           values:
///             - Sev0
///             - Sev1
///             - Sev2
///       schedule:
///         effectiveFrom: 2022-01-01T01:02:03
///         effectiveUntil: 2022-02-02T01:02:03
///         timeZone: Pacific Standard Time
///         recurrence:
///           dailies:
///             - startTime: 17:00:00
///               endTime: 09:00:00
///           weeklies:
///             - daysOfWeeks:
///                 - Saturday
///                 - Sunday
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AlertsManagement` - 2021-08-08
///
/// ## Import
///
/// Alert Processing Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/alertProcessingRuleSuppression:AlertProcessingRuleSuppression example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.AlertsManagement/actionRules/actionRule1
/// ```
class AlertProcessingRuleSuppression extends pulumi.CustomResource {
  /// A `condition` block as defined below.
  late final pulumi.Output<AlertProcessingRuleSuppressionCondition?> condition;
  /// Specifies a description for the Alert Processing Rule.
  late final pulumi.Output<String?> description;
  /// Should the Alert Processing Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `schedule` block as defined below.
  late final pulumi.Output<AlertProcessingRuleSuppressionSchedule?> schedule;
  /// A list of resource IDs which will be the target of Alert Processing Rule.
  late final pulumi.Output<List<String>> scopes;
  /// A mapping of tags which should be assigned to the Alert Processing Rule.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AlertProcessingRuleSuppression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertProcessingRuleSuppression]. {@macro pulumi_monitoring_alert_processing_rule_suppression_alert_processing_rule_suppression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertProcessingRuleSuppression(
    String name, {
    AlertProcessingRuleSuppressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/alertProcessingRuleSuppression:AlertProcessingRuleSuppression',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<AlertProcessingRuleSuppressionCondition?>('condition');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.schedule = registerOutput<AlertProcessingRuleSuppressionSchedule?>('schedule');
    this.scopes = registerOutput<List<String>>('scopes');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
