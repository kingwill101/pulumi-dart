import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_muting_rule_args.dart';
import 'alert_muting_rule_condition.dart';
import 'alert_muting_rule_schedule.dart';

/// Use this resource to create a muting rule for New Relic Alerts incidents.
///
/// > **IMPORTANT!** Version 2.0.0 of the New Relic Terraform Provider introduces some [additional requirements](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/migration_guide_v2) for configuring the provider.
/// <br><br>
/// Before upgrading to version 2.0.0 or later, it is recommended to upgrade to the most recent 1.x version of the provider and ensure that your environment successfully runs `pulumi preview` without unexpected changes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertMutingRule("foo", {
///     name: "Example Muting Rule",
///     enabled: true,
///     description: "muting rule test.",
///     condition: {
///         conditions: [
///             {
///                 attribute: "product",
///                 operator: "EQUALS",
///                 values: ["APM"],
///             },
///             {
///                 attribute: "targetId",
///                 operator: "EQUALS",
///                 values: ["Muted"],
///             },
///         ],
///         operator: "AND",
///     },
///     schedule: {
///         startTime: "2021-01-28T15:30:00",
///         endTime: "2021-01-28T16:30:00",
///         timeZone: "America/Los_Angeles",
///         repeat: "WEEKLY",
///         weeklyRepeatDays: [
///             "MONDAY",
///             "WEDNESDAY",
///             "FRIDAY",
///         ],
///         repeatCount: 42,
///     },
///     actionOnMutingRuleWindowEnded: "CLOSE_ISSUES_ON_INACTIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertMutingRule("foo",
///     name="Example Muting Rule",
///     enabled=True,
///     description="muting rule test.",
///     condition={
///         "conditions": [
///             {
///                 "attribute": "product",
///                 "operator": "EQUALS",
///                 "values": ["APM"],
///             },
///             {
///                 "attribute": "targetId",
///                 "operator": "EQUALS",
///                 "values": ["Muted"],
///             },
///         ],
///         "operator": "AND",
///     },
///     schedule={
///         "start_time": "2021-01-28T15:30:00",
///         "end_time": "2021-01-28T16:30:00",
///         "time_zone": "America/Los_Angeles",
///         "repeat": "WEEKLY",
///         "weekly_repeat_days": [
///             "MONDAY",
///             "WEDNESDAY",
///             "FRIDAY",
///         ],
///         "repeat_count": 42,
///     },
///     action_on_muting_rule_window_ended="CLOSE_ISSUES_ON_INACTIVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertMutingRule("foo", new()
///     {
///         Name = "Example Muting Rule",
///         Enabled = true,
///         Description = "muting rule test.",
///         Condition = new NewRelic.Inputs.AlertMutingRuleConditionArgs
///         {
///             Conditions = new[]
///             {
///                 new NewRelic.Inputs.AlertMutingRuleConditionConditionArgs
///                 {
///                     Attribute = "product",
///                     Operator = "EQUALS",
///                     Values = new[]
///                     {
///                         "APM",
///                     },
///                 },
///                 new NewRelic.Inputs.AlertMutingRuleConditionConditionArgs
///                 {
///                     Attribute = "targetId",
///                     Operator = "EQUALS",
///                     Values = new[]
///                     {
///                         "Muted",
///                     },
///                 },
///             },
///             Operator = "AND",
///         },
///         Schedule = new NewRelic.Inputs.AlertMutingRuleScheduleArgs
///         {
///             StartTime = "2021-01-28T15:30:00",
///             EndTime = "2021-01-28T16:30:00",
///             TimeZone = "America/Los_Angeles",
///             Repeat = "WEEKLY",
///             WeeklyRepeatDays = new[]
///             {
///                 "MONDAY",
///                 "WEDNESDAY",
///                 "FRIDAY",
///             },
///             RepeatCount = 42,
///         },
///         ActionOnMutingRuleWindowEnded = "CLOSE_ISSUES_ON_INACTIVE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewAlertMutingRule(ctx, "foo", &newrelic.AlertMutingRuleArgs{
/// 			Name:        pulumi.String("Example Muting Rule"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Description: pulumi.String("muting rule test."),
/// 			Condition: &newrelic.AlertMutingRuleConditionArgs{
/// 				Conditions: newrelic.AlertMutingRuleConditionConditionArray{
/// 					&newrelic.AlertMutingRuleConditionConditionArgs{
/// 						Attribute: pulumi.String("product"),
/// 						Operator:  pulumi.String("EQUALS"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("APM"),
/// 						},
/// 					},
/// 					&newrelic.AlertMutingRuleConditionConditionArgs{
/// 						Attribute: pulumi.String("targetId"),
/// 						Operator:  pulumi.String("EQUALS"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Muted"),
/// 						},
/// 					},
/// 				},
/// 				Operator: pulumi.String("AND"),
/// 			},
/// 			Schedule: &newrelic.AlertMutingRuleScheduleArgs{
/// 				StartTime: pulumi.String("2021-01-28T15:30:00"),
/// 				EndTime:   pulumi.String("2021-01-28T16:30:00"),
/// 				TimeZone:  pulumi.String("America/Los_Angeles"),
/// 				Repeat:    pulumi.String("WEEKLY"),
/// 				WeeklyRepeatDays: pulumi.StringArray{
/// 					pulumi.String("MONDAY"),
/// 					pulumi.String("WEDNESDAY"),
/// 					pulumi.String("FRIDAY"),
/// 				},
/// 				RepeatCount: pulumi.Int(42),
/// 			},
/// 			ActionOnMutingRuleWindowEnded: pulumi.String("CLOSE_ISSUES_ON_INACTIVE"),
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
/// import com.pulumi.newrelic.AlertMutingRule;
/// import com.pulumi.newrelic.AlertMutingRuleArgs;
/// import com.pulumi.newrelic.inputs.AlertMutingRuleConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertMutingRuleScheduleArgs;
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
///         var foo = new AlertMutingRule("foo", AlertMutingRuleArgs.builder()
///             .name("Example Muting Rule")
///             .enabled(true)
///             .description("muting rule test.")
///             .condition(AlertMutingRuleConditionArgs.builder()
///                 .conditions(
///                     AlertMutingRuleConditionConditionArgs.builder()
///                         .attribute("product")
///                         .operator("EQUALS")
///                         .values("APM")
///                         .build(),
///                     AlertMutingRuleConditionConditionArgs.builder()
///                         .attribute("targetId")
///                         .operator("EQUALS")
///                         .values("Muted")
///                         .build())
///                 .operator("AND")
///                 .build())
///             .schedule(AlertMutingRuleScheduleArgs.builder()
///                 .startTime("2021-01-28T15:30:00")
///                 .endTime("2021-01-28T16:30:00")
///                 .timeZone("America/Los_Angeles")
///                 .repeat("WEEKLY")
///                 .weeklyRepeatDays(
///                     "MONDAY",
///                     "WEDNESDAY",
///                     "FRIDAY")
///                 .repeatCount(42)
///                 .build())
///             .actionOnMutingRuleWindowEnded("CLOSE_ISSUES_ON_INACTIVE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertMutingRule
///     properties:
///       name: Example Muting Rule
///       enabled: true
///       description: muting rule test.
///       condition:
///         conditions:
///           - attribute: product
///             operator: EQUALS
///             values:
///               - APM
///           - attribute: targetId
///             operator: EQUALS
///             values:
///               - Muted
///         operator: AND
///       schedule:
///         startTime: 2021-01-28T15:30:00
///         endTime: 2021-01-28T16:30:00
///         timeZone: America/Los_Angeles
///         repeat: WEEKLY
///         weeklyRepeatDays:
///           - MONDAY
///           - WEDNESDAY
///           - FRIDAY
///         repeatCount: 42
///       actionOnMutingRuleWindowEnded: CLOSE_ISSUES_ON_INACTIVE
/// ```
///
///
/// ## Import
///
/// Alert Muting Rules can be imported using a composite ID of `<account_id>:<muting_rule_id>`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:index/alertMutingRule:AlertMutingRule foo 538291:6789035
///
/// ```
class AlertMutingRule extends pulumi.CustomResource {
  /// The account id of the MutingRule.
  late final pulumi.Output<String> accountId;
  /// The action when the muting rule window is ended or disabled. Valid values are `CLOSE_ISSUES_ON_INACTIVE`, `DO_NOTHING`.
  late final pulumi.Output<String> actionOnMutingRuleWindowEnded;
  /// The condition that defines which incidents to target. See Nested condition blocks below for details.
  late final pulumi.Output<AlertMutingRuleCondition> condition;
  /// The description of the MutingRule.
  late final pulumi.Output<String?> description;
  /// Whether the MutingRule is enabled.
  late final pulumi.Output<bool> enabled;
  /// The name of the MutingRule.
  late final pulumi.Output<String> name;
  /// Specify a schedule for enabling the MutingRule. See Schedule below for details
  late final pulumi.Output<AlertMutingRuleSchedule?> schedule;

  /// Creates a new [AlertMutingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertMutingRule]. {@macro pulumi_index_alert_muting_rule_alert_muting_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertMutingRule(
    String name, {
    AlertMutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/alertMutingRule:AlertMutingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.actionOnMutingRuleWindowEnded = registerOutput<String>('actionOnMutingRuleWindowEnded');
    this.condition = registerOutput<AlertMutingRuleCondition>('condition');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    this.schedule = registerOutput<AlertMutingRuleSchedule?>('schedule');
  }
}
