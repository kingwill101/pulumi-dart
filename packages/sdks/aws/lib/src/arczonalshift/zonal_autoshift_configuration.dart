import 'package:pulumi/pulumi.dart' as pulumi;
import 'zonal_autoshift_configuration_args.dart';
import 'zonal_autoshift_configuration_state.dart';

/// Manages an AWS Application Recovery Controller Zonal Shift Zonal Autoshift Configuration for a managed resource (such as a load balancer).
///
/// Zonal autoshift is a capability in AWS Application Recovery Controller (ARC) that automatically shifts traffic away from an Availability Zone when AWS identifies a potential issue, helping maintain application availability.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLoadBalancer = new aws.lb.LoadBalancer("example", {
///     name: "example",
///     internal: true,
///     loadBalancerType: "application",
///     subnets: exampleAwsSubnet.map(__item => __item.id),
///     enableZonalShift: true,
/// });
/// const exampleMetricAlarm = new aws.cloudwatch.MetricAlarm("example", {
///     name: "example-outcome-alarm",
///     comparisonOperator: "GreaterThanOrEqualToThreshold",
///     evaluationPeriods: 1,
///     metricName: "TargetResponseTime",
///     namespace: "AWS/ApplicationELB",
///     period: 60,
///     statistic: "Average",
///     threshold: 1,
///     alarmDescription: "Outcome alarm for zonal autoshift practice run",
///     dimensions: {
///         LoadBalancer: exampleLoadBalancer.arnSuffix,
///     },
/// });
/// const example = new aws.arczonalshift.ZonalAutoshiftConfiguration("example", {
///     resourceArn: exampleLoadBalancer.arn,
///     zonalAutoshiftStatus: "ENABLED",
///     outcomeAlarms: [{
///         alarmIdentifier: exampleMetricAlarm.arn,
///         type: "CLOUDWATCH",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_load_balancer = aws.lb.LoadBalancer("example",
///     name="example",
///     internal=True,
///     load_balancer_type="application",
///     subnets=[__item["id"] for __item in example_aws_subnet],
///     enable_zonal_shift=True)
/// example_metric_alarm = aws.cloudwatch.MetricAlarm("example",
///     name="example-outcome-alarm",
///     comparison_operator="GreaterThanOrEqualToThreshold",
///     evaluation_periods=1,
///     metric_name="TargetResponseTime",
///     namespace="AWS/ApplicationELB",
///     period=60,
///     statistic="Average",
///     threshold=float(1),
///     alarm_description="Outcome alarm for zonal autoshift practice run",
///     dimensions={
///         "LoadBalancer": example_load_balancer.arn_suffix,
///     })
/// example = aws.arczonalshift.ZonalAutoshiftConfiguration("example",
///     resource_arn=example_load_balancer.arn,
///     zonal_autoshift_status="ENABLED",
///     outcome_alarms=[{
///         "alarm_identifier": example_metric_alarm.arn,
///         "type": "CLOUDWATCH",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLoadBalancer = new Aws.LB.LoadBalancer("example", new()
///     {
///         Name = "example",
///         Internal = true,
///         LoadBalancerType = "application",
///         Subnets = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///         EnableZonalShift = true,
///     });
///
///     var exampleMetricAlarm = new Aws.CloudWatch.MetricAlarm("example", new()
///     {
///         Name = "example-outcome-alarm",
///         ComparisonOperator = "GreaterThanOrEqualToThreshold",
///         EvaluationPeriods = 1,
///         MetricName = "TargetResponseTime",
///         Namespace = "AWS/ApplicationELB",
///         Period = 60,
///         Statistic = "Average",
///         Threshold = 1,
///         AlarmDescription = "Outcome alarm for zonal autoshift practice run",
///         Dimensions =
///         {
///             { "LoadBalancer", exampleLoadBalancer.ArnSuffix },
///         },
///     });
///
///     var example = new Aws.ArcZonalShift.ZonalAutoshiftConfiguration("example", new()
///     {
///         ResourceArn = exampleLoadBalancer.Arn,
///         ZonalAutoshiftStatus = "ENABLED",
///         OutcomeAlarms = new[]
///         {
///             new Aws.ArcZonalShift.Inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs
///             {
///                 AlarmIdentifier = exampleMetricAlarm.Arn,
///                 Type = "CLOUDWATCH",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arczonalshift"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.(map[string]interface{})["id"])
/// }
/// exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// Name: pulumi.String("example"),
/// Internal: pulumi.Bool(true),
/// LoadBalancerType: pulumi.String("application"),
/// Subnets: toPulumiArray(splat0),
/// EnableZonalShift: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleMetricAlarm, err := cloudwatch.NewMetricAlarm(ctx, "example", &cloudwatch.MetricAlarmArgs{
/// Name: pulumi.String("example-outcome-alarm"),
/// ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// EvaluationPeriods: pulumi.Int(1),
/// MetricName: pulumi.String("TargetResponseTime"),
/// Namespace: pulumi.String("AWS/ApplicationELB"),
/// Period: pulumi.Int(60),
/// Statistic: pulumi.String("Average"),
/// Threshold: pulumi.Float64(1),
/// AlarmDescription: pulumi.String("Outcome alarm for zonal autoshift practice run"),
/// Dimensions: pulumi.StringMap{
/// "LoadBalancer": exampleLoadBalancer.ArnSuffix,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = arczonalshift.NewZonalAutoshiftConfiguration(ctx, "example", &arczonalshift.ZonalAutoshiftConfigurationArgs{
/// ResourceArn: exampleLoadBalancer.Arn,
/// ZonalAutoshiftStatus: pulumi.String("ENABLED"),
/// OutcomeAlarms: arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArray{
/// &arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArgs{
/// AlarmIdentifier: exampleMetricAlarm.Arn,
/// Type: pulumi.String("CLOUDWATCH"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
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
/// resource "aws_arczonalshift_zonalautoshiftconfiguration" "example" {
///   resource_arn           = aws_lb_loadbalancer.example.arn
///   zonal_autoshift_status = "ENABLED"
///   outcome_alarms {
///     alarm_identifier = aws_cloudwatch_metricalarm.example.arn
///     type             = "CLOUDWATCH"
///   }
/// }
/// resource "aws_lb_loadbalancer" "example" {
///   name               = "example"
///   internal           = true
///   load_balancer_type = "application"
///   subnets            = exampleAwsSubnet[*].id
///   enable_zonal_shift = true
/// }
/// resource "aws_cloudwatch_metricalarm" "example" {
///   name                = "example-outcome-alarm"
///   comparison_operator = "GreaterThanOrEqualToThreshold"
///   evaluation_periods  = 1
///   metric_name         = "TargetResponseTime"
///   namespace           = "AWS/ApplicationELB"
///   period              = 60
///   statistic           = "Average"
///   threshold           = 1
///   alarm_description   = "Outcome alarm for zonal autoshift practice run"
///   dimensions = {
///     "LoadBalancer" = aws_lb_loadbalancer.example.arn_suffix
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfiguration;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfigurationArgs;
/// import com.pulumi.aws.arczonalshift.inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs;
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
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("example")
///             .internal(true)
///             .loadBalancerType("application")
///             .subnets(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .enableZonalShift(true)
///             .build());
///
///         var exampleMetricAlarm = new MetricAlarm("exampleMetricAlarm", MetricAlarmArgs.builder()
///             .name("example-outcome-alarm")
///             .comparisonOperator("GreaterThanOrEqualToThreshold")
///             .evaluationPeriods(1)
///             .metricName("TargetResponseTime")
///             .namespace("AWS/ApplicationELB")
///             .period(60)
///             .statistic("Average")
///             .threshold(1.0)
///             .alarmDescription("Outcome alarm for zonal autoshift practice run")
///             .dimensions(Map.of("LoadBalancer", exampleLoadBalancer.arnSuffix()))
///             .build());
///
///         var example = new ZonalAutoshiftConfiguration("example", ZonalAutoshiftConfigurationArgs.builder()
///             .resourceArn(exampleLoadBalancer.arn())
///             .zonalAutoshiftStatus("ENABLED")
///             .outcomeAlarms(ZonalAutoshiftConfigurationOutcomeAlarmArgs.builder()
///                 .alarmIdentifier(exampleMetricAlarm.arn())
///                 .type("CLOUDWATCH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### With Blocking Alarms
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.arczonalshift.ZonalAutoshiftConfiguration("example", {
///     resourceArn: exampleAwsLb.arn,
///     zonalAutoshiftStatus: "ENABLED",
///     outcomeAlarms: [{
///         alarmIdentifier: outcome.arn,
///         type: "CLOUDWATCH",
///     }],
///     blockingAlarms: [{
///         alarmIdentifier: blocking.arn,
///         type: "CLOUDWATCH",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arczonalshift.ZonalAutoshiftConfiguration("example",
///     resource_arn=example_aws_lb["arn"],
///     zonal_autoshift_status="ENABLED",
///     outcome_alarms=[{
///         "alarm_identifier": outcome["arn"],
///         "type": "CLOUDWATCH",
///     }],
///     blocking_alarms=[{
///         "alarm_identifier": blocking["arn"],
///         "type": "CLOUDWATCH",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ArcZonalShift.ZonalAutoshiftConfiguration("example", new()
///     {
///         ResourceArn = exampleAwsLb.Arn,
///         ZonalAutoshiftStatus = "ENABLED",
///         OutcomeAlarms = new[]
///         {
///             new Aws.ArcZonalShift.Inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs
///             {
///                 AlarmIdentifier = outcome.Arn,
///                 Type = "CLOUDWATCH",
///             },
///         },
///         BlockingAlarms = new[]
///         {
///             new Aws.ArcZonalShift.Inputs.ZonalAutoshiftConfigurationBlockingAlarmArgs
///             {
///                 AlarmIdentifier = blocking.Arn,
///                 Type = "CLOUDWATCH",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arczonalshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arczonalshift.NewZonalAutoshiftConfiguration(ctx, "example", &arczonalshift.ZonalAutoshiftConfigurationArgs{
/// 			ResourceArn:          pulumi.Any(exampleAwsLb.Arn),
/// 			ZonalAutoshiftStatus: pulumi.String("ENABLED"),
/// 			OutcomeAlarms: arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArray{
/// 				&arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArgs{
/// 					AlarmIdentifier: pulumi.Any(outcome.Arn),
/// 					Type:            pulumi.String("CLOUDWATCH"),
/// 				},
/// 			},
/// 			BlockingAlarms: arczonalshift.ZonalAutoshiftConfigurationBlockingAlarmArray{
/// 				&arczonalshift.ZonalAutoshiftConfigurationBlockingAlarmArgs{
/// 					AlarmIdentifier: pulumi.Any(blocking.Arn),
/// 					Type:            pulumi.String("CLOUDWATCH"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_arczonalshift_zonalautoshiftconfiguration" "example" {
///   resource_arn           = exampleAwsLb.arn
///   zonal_autoshift_status = "ENABLED"
///   outcome_alarms {
///     alarm_identifier = outcome.arn
///     type             = "CLOUDWATCH"
///   }
///   blocking_alarms {
///     alarm_identifier = blocking.arn
///     type             = "CLOUDWATCH"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfiguration;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfigurationArgs;
/// import com.pulumi.aws.arczonalshift.inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs;
/// import com.pulumi.aws.arczonalshift.inputs.ZonalAutoshiftConfigurationBlockingAlarmArgs;
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
///         var example = new ZonalAutoshiftConfiguration("example", ZonalAutoshiftConfigurationArgs.builder()
///             .resourceArn(exampleAwsLb.arn())
///             .zonalAutoshiftStatus("ENABLED")
///             .outcomeAlarms(ZonalAutoshiftConfigurationOutcomeAlarmArgs.builder()
///                 .alarmIdentifier(outcome.arn())
///                 .type("CLOUDWATCH")
///                 .build())
///             .blockingAlarms(ZonalAutoshiftConfigurationBlockingAlarmArgs.builder()
///                 .alarmIdentifier(blocking.arn())
///                 .type("CLOUDWATCH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:arczonalshift:ZonalAutoshiftConfiguration
///     properties:
///       resourceArn: ${exampleAwsLb.arn}
///       zonalAutoshiftStatus: ENABLED
///       outcomeAlarms:
///         - alarmIdentifier: ${outcome.arn}
///           type: CLOUDWATCH
///       blockingAlarms:
///         - alarmIdentifier: ${blocking.arn}
///           type: CLOUDWATCH
/// ```
///
///
/// ### With Blocked Windows
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.arczonalshift.ZonalAutoshiftConfiguration("example", {
///     resourceArn: exampleAwsLb.arn,
///     zonalAutoshiftStatus: "ENABLED",
///     blockedWindows: ["Mon:00:00-Mon:08:00"],
///     outcomeAlarms: [{
///         alarmIdentifier: exampleAwsCloudwatchMetricAlarm.arn,
///         type: "CLOUDWATCH",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arczonalshift.ZonalAutoshiftConfiguration("example",
///     resource_arn=example_aws_lb["arn"],
///     zonal_autoshift_status="ENABLED",
///     blocked_windows=["Mon:00:00-Mon:08:00"],
///     outcome_alarms=[{
///         "alarm_identifier": example_aws_cloudwatch_metric_alarm["arn"],
///         "type": "CLOUDWATCH",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ArcZonalShift.ZonalAutoshiftConfiguration("example", new()
///     {
///         ResourceArn = exampleAwsLb.Arn,
///         ZonalAutoshiftStatus = "ENABLED",
///         BlockedWindows = new[]
///         {
///             "Mon:00:00-Mon:08:00",
///         },
///         OutcomeAlarms = new[]
///         {
///             new Aws.ArcZonalShift.Inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs
///             {
///                 AlarmIdentifier = exampleAwsCloudwatchMetricAlarm.Arn,
///                 Type = "CLOUDWATCH",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arczonalshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arczonalshift.NewZonalAutoshiftConfiguration(ctx, "example", &arczonalshift.ZonalAutoshiftConfigurationArgs{
/// 			ResourceArn:          pulumi.Any(exampleAwsLb.Arn),
/// 			ZonalAutoshiftStatus: pulumi.String("ENABLED"),
/// 			BlockedWindows: pulumi.StringArray{
/// 				pulumi.String("Mon:00:00-Mon:08:00"),
/// 			},
/// 			OutcomeAlarms: arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArray{
/// 				&arczonalshift.ZonalAutoshiftConfigurationOutcomeAlarmArgs{
/// 					AlarmIdentifier: pulumi.Any(exampleAwsCloudwatchMetricAlarm.Arn),
/// 					Type:            pulumi.String("CLOUDWATCH"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_arczonalshift_zonalautoshiftconfiguration" "example" {
///   resource_arn           = exampleAwsLb.arn
///   zonal_autoshift_status = "ENABLED"
///   blocked_windows        = ["Mon:00:00-Mon:08:00"]
///   outcome_alarms {
///     alarm_identifier = exampleAwsCloudwatchMetricAlarm.arn
///     type             = "CLOUDWATCH"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfiguration;
/// import com.pulumi.aws.arczonalshift.ZonalAutoshiftConfigurationArgs;
/// import com.pulumi.aws.arczonalshift.inputs.ZonalAutoshiftConfigurationOutcomeAlarmArgs;
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
///         var example = new ZonalAutoshiftConfiguration("example", ZonalAutoshiftConfigurationArgs.builder()
///             .resourceArn(exampleAwsLb.arn())
///             .zonalAutoshiftStatus("ENABLED")
///             .blockedWindows("Mon:00:00-Mon:08:00")
///             .outcomeAlarms(ZonalAutoshiftConfigurationOutcomeAlarmArgs.builder()
///                 .alarmIdentifier(exampleAwsCloudwatchMetricAlarm.arn())
///                 .type("CLOUDWATCH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:arczonalshift:ZonalAutoshiftConfiguration
///     properties:
///       resourceArn: ${exampleAwsLb.arn}
///       zonalAutoshiftStatus: ENABLED
///       blockedWindows:
///         - Mon:00:00-Mon:08:00
///       outcomeAlarms:
///         - alarmIdentifier: ${exampleAwsCloudwatchMetricAlarm.arn}
///           type: CLOUDWATCH
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` (String) ARN of the managed resource to configure zonal autoshift for.
///
///
/// Using `pulumi import`, import ARC Zonal Shift Zonal Autoshift Configuration using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:arczonalshift/zonalAutoshiftConfiguration:ZonalAutoshiftConfiguration example arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/example/50dc6c495c0c9188
/// ```
class ZonalAutoshiftConfiguration extends pulumi.CustomResource {
  /// List of time windows during which practice runs are allowed, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:09:00-Mon:17:00`). Cannot be used together with `blockedWindows`.
  late final pulumi.Output<List<String>?> allowedWindows;
  /// List of dates when practice runs should not be started, in the format `YYYY-MM-DD`.
  late final pulumi.Output<List<String>?> blockedDates;
  /// List of time windows during which practice runs should not be started, in the format `Day:HH:MM-Day:HH:MM` (e.g., `Mon:00:00-Mon:08:00`). Cannot be used together with `allowedWindows`.
  late final pulumi.Output<List<String>?> blockedWindows;
  /// List of CloudWatch alarms that can block practice runs when in alarm state. See `blockingAlarms` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> blockingAlarms;
  /// List of CloudWatch alarms monitored during practice runs. See `outcomeAlarms` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> outcomeAlarms;
  /// AWS region where the resource is deployed.
  late final pulumi.Output<String> region;
  /// The ARN of the managed resource to configure zonal autoshift for (e.g., an Application Load Balancer). Changing this creates a new resource.
  late final pulumi.Output<String> resourceArn;
  /// The status of zonal autoshift. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> zonalAutoshiftStatus;

  /// Creates a new [ZonalAutoshiftConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZonalAutoshiftConfiguration]. {@macro pulumi_arczonalshift_zonal_autoshift_configuration_zonal_autoshift_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZonalAutoshiftConfiguration(
    String name, {
    ZonalAutoshiftConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arczonalshift/zonalAutoshiftConfiguration:ZonalAutoshiftConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedWindows = registerOutput<List<String>?>('allowedWindows');
    blockedDates = registerOutput<List<String>?>('blockedDates');
    blockedWindows = registerOutput<List<String>?>('blockedWindows');
    blockingAlarms = registerOutput<List<Map<String, dynamic>>?>('blockingAlarms');
    outcomeAlarms = registerOutput<List<Map<String, dynamic>>?>('outcomeAlarms');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    zonalAutoshiftStatus = registerOutput<String>('zonalAutoshiftStatus');
  }

  /// Gets an existing [ZonalAutoshiftConfiguration] resource's state with the given [name] and [id].
  static ZonalAutoshiftConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ZonalAutoshiftConfigurationState? state,
  }) {
    return ZonalAutoshiftConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZonalAutoshiftConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arczonalshift/zonalAutoshiftConfiguration:ZonalAutoshiftConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedWindows = registerOutput<List<String>?>('allowedWindows');
    blockedDates = registerOutput<List<String>?>('blockedDates');
    blockedWindows = registerOutput<List<String>?>('blockedWindows');
    blockingAlarms = registerOutput<List<Map<String, dynamic>>?>('blockingAlarms');
    outcomeAlarms = registerOutput<List<Map<String, dynamic>>?>('outcomeAlarms');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    zonalAutoshiftStatus = registerOutput<String>('zonalAutoshiftStatus');
  }
}
