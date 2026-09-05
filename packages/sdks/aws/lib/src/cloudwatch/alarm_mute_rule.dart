import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_mute_rule_args.dart';
import 'alarm_mute_rule_mute_targets.dart';
import 'alarm_mute_rule_rule.dart';
import 'alarm_mute_rule_state.dart';

/// Manages an AWS CloudWatch Alarm Mute Rule.
///
/// ## Example Usage
///
/// ### Basic Usage with Cron Expression
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.AlarmMuteRule("example", {
///     rule: {
///         schedule: {
///             duration: "PT4H",
///             expression: "cron(0 2 * * *)",
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.AlarmMuteRule("example",
///     rule={
///         "schedule": {
///             "duration": "PT4H",
///             "expression": "cron(0 2 * * *)",
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.AlarmMuteRule("example", new()
///     {
///         Rule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleArgs
///         {
///             Schedule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleScheduleArgs
///             {
///                 Duration = "PT4H",
///                 Expression = "cron(0 2 * * *)",
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewAlarmMuteRule(ctx, "example", &cloudwatch.AlarmMuteRuleArgs{
/// 			Rule: &cloudwatch.AlarmMuteRuleRuleArgs{
/// 				Schedule: &cloudwatch.AlarmMuteRuleRuleScheduleArgs{
/// 					Duration:   pulumi.String("PT4H"),
/// 					Expression: pulumi.String("cron(0 2 * * *)"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_alarmmuterule" "example" {
///   rule = {
///     schedule = {
///       duration   = "PT4H"
///       expression = "cron(0 2 * * *)"
///     }
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRule;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleScheduleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AlarmMuteRule("example", AlarmMuteRuleArgs.builder()
///             .rule(AlarmMuteRuleRuleArgs.builder()
///                 .schedule(AlarmMuteRuleRuleScheduleArgs.builder()
///                     .duration("PT4H")
///                     .expression("cron(0 2 * * *)")
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:AlarmMuteRule
///     properties:
///       rule:
///         schedule:
///           duration: PT4H
///           expression: cron(0 2 * * *)
///       name: example
/// ```
///
///
/// ### With Start/Expire Dates Option
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.MetricAlarm("example", {
///     name: "example",
///     comparisonOperator: "GreaterThanThreshold",
///     evaluationPeriods: 2,
///     metricName: "CPUUtilization",
///     namespace: "AWS/EC2",
///     period: 120,
///     statistic: "Average",
///     threshold: 80,
/// });
/// const exampleAlarmMuteRule = new aws.cloudwatch.AlarmMuteRule("example", {
///     rule: {
///         schedule: {
///             duration: "PT4H",
///             expression: "cron(0 2 * * *)",
///             timezone: "Asia/Tokyo",
///         },
///     },
///     muteTargets: {
///         alarmNames: [example.name],
///     },
///     name: "example",
///     description: "Mute alarms during maintenance window",
///     startDate: "2026-01-01T00:00:00Z",
///     expireDate: "2026-12-31T23:59:00Z",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.MetricAlarm("example",
///     name="example",
///     comparison_operator="GreaterThanThreshold",
///     evaluation_periods=2,
///     metric_name="CPUUtilization",
///     namespace="AWS/EC2",
///     period=120,
///     statistic="Average",
///     threshold=float(80))
/// example_alarm_mute_rule = aws.cloudwatch.AlarmMuteRule("example",
///     rule={
///         "schedule": {
///             "duration": "PT4H",
///             "expression": "cron(0 2 * * *)",
///             "timezone": "Asia/Tokyo",
///         },
///     },
///     mute_targets={
///         "alarm_names": [example.name],
///     },
///     name="example",
///     description="Mute alarms during maintenance window",
///     start_date="2026-01-01T00:00:00Z",
///     expire_date="2026-12-31T23:59:00Z",
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.MetricAlarm("example", new()
///     {
///         Name = "example",
///         ComparisonOperator = "GreaterThanThreshold",
///         EvaluationPeriods = 2,
///         MetricName = "CPUUtilization",
///         Namespace = "AWS/EC2",
///         Period = 120,
///         Statistic = "Average",
///         Threshold = 80,
///     });
///
///     var exampleAlarmMuteRule = new Aws.CloudWatch.AlarmMuteRule("example", new()
///     {
///         Rule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleArgs
///         {
///             Schedule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleScheduleArgs
///             {
///                 Duration = "PT4H",
///                 Expression = "cron(0 2 * * *)",
///                 Timezone = "Asia/Tokyo",
///             },
///         },
///         MuteTargets = new Aws.CloudWatch.Inputs.AlarmMuteRuleMuteTargetsArgs
///         {
///             AlarmNames = new[]
///             {
///                 example.Name,
///             },
///         },
///         Name = "example",
///         Description = "Mute alarms during maintenance window",
///         StartDate = "2026-01-01T00:00:00Z",
///         ExpireDate = "2026-12-31T23:59:00Z",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewMetricAlarm(ctx, "example", &cloudwatch.MetricAlarmArgs{
/// 			Name:               pulumi.String("example"),
/// 			ComparisonOperator: pulumi.String("GreaterThanThreshold"),
/// 			EvaluationPeriods:  pulumi.Int(2),
/// 			MetricName:         pulumi.String("CPUUtilization"),
/// 			Namespace:          pulumi.String("AWS/EC2"),
/// 			Period:             pulumi.Int(120),
/// 			Statistic:          pulumi.String("Average"),
/// 			Threshold:          pulumi.Float64(80),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewAlarmMuteRule(ctx, "example", &cloudwatch.AlarmMuteRuleArgs{
/// 			Rule: &cloudwatch.AlarmMuteRuleRuleArgs{
/// 				Schedule: &cloudwatch.AlarmMuteRuleRuleScheduleArgs{
/// 					Duration:   pulumi.String("PT4H"),
/// 					Expression: pulumi.String("cron(0 2 * * *)"),
/// 					Timezone:   pulumi.String("Asia/Tokyo"),
/// 				},
/// 			},
/// 			MuteTargets: &cloudwatch.AlarmMuteRuleMuteTargetsArgs{
/// 				AlarmNames: pulumi.StringArray{
/// 					example.Name,
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Mute alarms during maintenance window"),
/// 			StartDate:   pulumi.String("2026-01-01T00:00:00Z"),
/// 			ExpireDate:  pulumi.String("2026-12-31T23:59:00Z"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_metricalarm" "example" {
///   name                = "example"
///   comparison_operator = "GreaterThanThreshold"
///   evaluation_periods  = 2
///   metric_name         = "CPUUtilization"
///   namespace           = "AWS/EC2"
///   period              = 120
///   statistic           = "Average"
///   threshold           = 80
/// }
/// resource "aws_cloudwatch_alarmmuterule" "example" {
///   rule = {
///     schedule = {
///       duration   = "PT4H"
///       expression = "cron(0 2 * * *)"
///       timezone   = "Asia/Tokyo"
///     }
///   }
///   mute_targets = {
///     alarm_names = [aws_cloudwatch_metricalarm.example.name]
///   }
///   name        = "example"
///   description = "Mute alarms during maintenance window"
///   start_date  = "2026-01-01T00:00:00Z"
///   expire_date = "2026-12-31T23:59:00Z"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRule;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleScheduleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleMuteTargetsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new MetricAlarm("example", MetricAlarmArgs.builder()
///             .name("example")
///             .comparisonOperator("GreaterThanThreshold")
///             .evaluationPeriods(2)
///             .metricName("CPUUtilization")
///             .namespace("AWS/EC2")
///             .period(120)
///             .statistic("Average")
///             .threshold(80.0)
///             .build());
///
///         var exampleAlarmMuteRule = new AlarmMuteRule("exampleAlarmMuteRule", AlarmMuteRuleArgs.builder()
///             .rule(AlarmMuteRuleRuleArgs.builder()
///                 .schedule(AlarmMuteRuleRuleScheduleArgs.builder()
///                     .duration("PT4H")
///                     .expression("cron(0 2 * * *)")
///                     .timezone("Asia/Tokyo")
///                     .build())
///                 .build())
///             .muteTargets(AlarmMuteRuleMuteTargetsArgs.builder()
///                 .alarmNames(example.name())
///                 .build())
///             .name("example")
///             .description("Mute alarms during maintenance window")
///             .startDate("2026-01-01T00:00:00Z")
///             .expireDate("2026-12-31T23:59:00Z")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:MetricAlarm
///     properties:
///       name: example
///       comparisonOperator: GreaterThanThreshold
///       evaluationPeriods: 2
///       metricName: CPUUtilization
///       namespace: AWS/EC2
///       period: 120
///       statistic: Average
///       threshold: 80
///   exampleAlarmMuteRule:
///     type: aws:cloudwatch:AlarmMuteRule
///     name: example
///     properties:
///       rule:
///         schedule:
///           duration: PT4H
///           expression: cron(0 2 * * *)
///           timezone: Asia/Tokyo
///       muteTargets:
///         alarmNames:
///           - ${example.name}
///       name: example
///       description: Mute alarms during maintenance window
///       startDate: 2026-01-01T00:00:00Z
///       expireDate: 2026-12-31T23:59:00Z
///       tags:
///         Environment: production
/// ```
///
///
/// ### With At Expression
///
/// &gt; **NOTE:** When using `at()` expressions, do not set `startDate` or `expireDate`. The CloudWatch API returns the error `Can not set start or expire dates for At expressions`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.AlarmMuteRule("example", {
///     rule: {
///         schedule: {
///             duration: "PT4H",
///             expression: "at(2026-12-31T23:59:59)",
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.AlarmMuteRule("example",
///     rule={
///         "schedule": {
///             "duration": "PT4H",
///             "expression": "at(2026-12-31T23:59:59)",
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.AlarmMuteRule("example", new()
///     {
///         Rule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleArgs
///         {
///             Schedule = new Aws.CloudWatch.Inputs.AlarmMuteRuleRuleScheduleArgs
///             {
///                 Duration = "PT4H",
///                 Expression = "at(2026-12-31T23:59:59)",
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewAlarmMuteRule(ctx, "example", &cloudwatch.AlarmMuteRuleArgs{
/// 			Rule: &cloudwatch.AlarmMuteRuleRuleArgs{
/// 				Schedule: &cloudwatch.AlarmMuteRuleRuleScheduleArgs{
/// 					Duration:   pulumi.String("PT4H"),
/// 					Expression: pulumi.String("at(2026-12-31T23:59:59)"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_alarmmuterule" "example" {
///   rule = {
///     schedule = {
///       duration   = "PT4H"
///       expression = "at(2026-12-31T23:59:59)"
///     }
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRule;
/// import com.pulumi.aws.cloudwatch.AlarmMuteRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleArgs;
/// import com.pulumi.aws.cloudwatch.inputs.AlarmMuteRuleRuleScheduleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AlarmMuteRule("example", AlarmMuteRuleArgs.builder()
///             .rule(AlarmMuteRuleRuleArgs.builder()
///                 .schedule(AlarmMuteRuleRuleScheduleArgs.builder()
///                     .duration("PT4H")
///                     .expression("at(2026-12-31T23:59:59)")
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:AlarmMuteRule
///     properties:
///       rule:
///         schedule:
///           duration: PT4H
///           expression: at(2026-12-31T23:59:59)
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the CloudWatch Alarm Mute Rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Alarm Mute Rule using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/alarmMuteRule:AlarmMuteRule example example
/// ```
class AlarmMuteRule extends pulumi.CustomResource {
  /// ARN of the Alarm Mute Rule.
  late final pulumi.Output<String> arn;
  /// Description of the alarm mute rule.
  late final pulumi.Output<String?> description;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule expires. Seconds must be set to `00` (e.g., `2026-12-31T23:59:00Z`). Must not be set when using `at()` expressions.
  late final pulumi.Output<String?> expireDate;
  /// Timestamp of when the mute rule was last updated.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Alarms to mute. See `muteTargets` block below for details.
  late final pulumi.Output<AlarmMuteRuleMuteTargets?> muteTargets;
  /// Indicates whether the mute rule is one-time or recurring. Valid values are `ONE_TIME` or `RECURRING`. See [Alarm mute rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-mute-rules.html) for details.
  late final pulumi.Output<String> muteType;
  /// Name of the alarm mute rule. Changing this forces a new resource.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Rule definition for the mute rule. See `rule` block below for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AlarmMuteRuleRule?> rule;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule becomes active. Seconds must be set to `00` (e.g., `2026-01-01T00:00:00Z`). Must not be set when using `at()` expressions.
  late final pulumi.Output<String?> startDate;
  /// Current status of the mute rule. Valid values are `SCHEDULED`, `ACTIVE`, or `EXPIRED`.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AlarmMuteRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlarmMuteRule]. {@macro pulumi_cloudwatch_alarm_mute_rule_alarm_mute_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlarmMuteRule(
    String name, {
    AlarmMuteRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/alarmMuteRule:AlarmMuteRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    expireDate = registerOutput<String?>('expireDate');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    muteTargets = registerOutput<AlarmMuteRuleMuteTargets?>('muteTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleMuteTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    muteType = registerOutput<String>('muteType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rule = registerOutput<AlarmMuteRuleRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startDate = registerOutput<String?>('startDate');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AlarmMuteRule] resource's state with the given [name] and [id].
  static AlarmMuteRule get(
    String name,
    pulumi.Input<String> id, {
    AlarmMuteRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AlarmMuteRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AlarmMuteRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/alarmMuteRule:AlarmMuteRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    expireDate = registerOutput<String?>('expireDate');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    muteTargets = registerOutput<AlarmMuteRuleMuteTargets?>('muteTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleMuteTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    muteType = registerOutput<String>('muteType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rule = registerOutput<AlarmMuteRuleRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startDate = registerOutput<String?>('startDate');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AlarmMuteRule] resource.
  AlarmMuteRule.reference(String urn)
    : super(
        'aws:cloudwatch/alarmMuteRule:AlarmMuteRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    expireDate = registerOutput<String?>('expireDate');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    muteTargets = registerOutput<AlarmMuteRuleMuteTargets?>('muteTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleMuteTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    muteType = registerOutput<String>('muteType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rule = registerOutput<AlarmMuteRuleRule?>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlarmMuteRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startDate = registerOutput<String?>('startDate');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
