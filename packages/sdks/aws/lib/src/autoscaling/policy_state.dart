// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration.dart';
import 'policy_step_adjustment.dart';
import 'policy_target_tracking_configuration.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final pulumi.Input<String>? adjustmentType;
  /// ARN assigned by AWS to the scaling policy.
  final pulumi.Input<String>? arn;
  /// Name of the autoscaling group.
  final pulumi.Input<String>? autoscalingGroupName;
  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final pulumi.Input<int>? cooldown;
  /// Whether the scaling policy is enabled or disabled. Default: `true`.
  ///
  /// The following argument is only available to "SimpleScaling" and "StepScaling" type policies:
  final pulumi.Input<bool>? enabled;
  /// Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  final pulumi.Input<int>? estimatedInstanceWarmup;
  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  final pulumi.Input<String>? metricAggregationType;
  /// Minimum value to scale by when `adjustment_type` is set to `PercentChangeInCapacity`.
  ///
  /// The following arguments are only available to "SimpleScaling" type policies:
  final pulumi.Input<int>? minAdjustmentMagnitude;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  final pulumi.Input<String>? policyType;
  /// Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  final pulumi.Input<PolicyPredictiveScalingConfiguration>? predictiveScalingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  final pulumi.Input<int>? scalingAdjustment;
  /// Set of adjustments that manage
  /// group scaling. These have the following structure:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {stepAdjustments: [
  ///     {
  ///         scalingAdjustment: -1,
  ///         metricIntervalLowerBound: "1",
  ///         metricIntervalUpperBound: "2",
  ///     },
  ///     {
  ///         scalingAdjustment: 1,
  ///         metricIntervalLowerBound: "2",
  ///         metricIntervalUpperBound: "3",
  ///     },
  /// ]});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", step_adjustments=[
  ///     {
  ///         "scaling_adjustment": -1,
  ///         "metric_interval_lower_bound": "1",
  ///         "metric_interval_upper_bound": "2",
  ///     },
  ///     {
  ///         "scaling_adjustment": 1,
  ///         "metric_interval_lower_bound": "2",
  ///         "metric_interval_upper_bound": "3",
  ///     },
  /// ])
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Aws.AutoScaling.Policy("example", new()
  ///     {
  ///         StepAdjustments = new[]
  ///         {
  ///             new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  ///             {
  ///                 ScalingAdjustment = -1,
  ///                 MetricIntervalLowerBound = "1",
  ///                 MetricIntervalUpperBound = "2",
  ///             },
  ///             new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  ///             {
  ///                 ScalingAdjustment = 1,
  ///                 MetricIntervalLowerBound = "2",
  ///                 MetricIntervalUpperBound = "3",
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
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// 			StepAdjustments: autoscaling.PolicyStepAdjustmentArray{
  /// 				&autoscaling.PolicyStepAdjustmentArgs{
  /// 					ScalingAdjustment:        pulumi.Int(-1),
  /// 					MetricIntervalLowerBound: pulumi.String("1"),
  /// 					MetricIntervalUpperBound: pulumi.String("2"),
  /// 				},
  /// 				&autoscaling.PolicyStepAdjustmentArgs{
  /// 					ScalingAdjustment:        pulumi.Int(1),
  /// 					MetricIntervalLowerBound: pulumi.String("2"),
  /// 					MetricIntervalUpperBound: pulumi.String("3"),
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
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyStepAdjustmentArgs;
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
  ///         var example = new Policy("example", PolicyArgs.builder()
  ///             .stepAdjustments(
  ///                 PolicyStepAdjustmentArgs.builder()
  ///                     .scalingAdjustment(-1)
  ///                     .metricIntervalLowerBound("1")
  ///                     .metricIntervalUpperBound("2")
  ///                     .build(),
  ///                 PolicyStepAdjustmentArgs.builder()
  ///                     .scalingAdjustment(1)
  ///                     .metricIntervalLowerBound("2")
  ///                     .metricIntervalUpperBound("3")
  ///                     .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: aws:autoscaling:Policy
  ///     properties:
  ///       stepAdjustments:
  ///         - scalingAdjustment: -1
  ///           metricIntervalLowerBound: 1
  ///           metricIntervalUpperBound: 2
  ///         - scalingAdjustment: 1
  ///           metricIntervalLowerBound: 2
  ///           metricIntervalUpperBound: 3
  /// ```
  ///
  ///
  /// The following fields are available in step adjustments:
  final pulumi.Input<List<PolicyStepAdjustment>>? stepAdjustments;
  /// Target tracking policy. These have the following structure:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {targetTrackingConfiguration: {
  ///     predefinedMetricSpecification: {
  ///         predefinedMetricType: "ASGAverageCPUUtilization",
  ///     },
  ///     targetValue: 40,
  /// }});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", target_tracking_configuration={
  ///     "predefined_metric_specification": {
  ///         "predefined_metric_type": "ASGAverageCPUUtilization",
  ///     },
  ///     "target_value": 40,
  /// })
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Aws.AutoScaling.Policy("example", new()
  ///     {
  ///         TargetTrackingConfiguration = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationArgs
  ///         {
  ///             PredefinedMetricSpecification = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs
  ///             {
  ///                 PredefinedMetricType = "ASGAverageCPUUtilization",
  ///             },
  ///             TargetValue = 40,
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// 			TargetTrackingConfiguration: &autoscaling.PolicyTargetTrackingConfigurationArgs{
  /// 				PredefinedMetricSpecification: &autoscaling.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs{
  /// 					PredefinedMetricType: pulumi.String("ASGAverageCPUUtilization"),
  /// 				},
  /// 				TargetValue: pulumi.Float64(40),
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
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs;
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
  ///         var example = new Policy("example", PolicyArgs.builder()
  ///             .targetTrackingConfiguration(PolicyTargetTrackingConfigurationArgs.builder()
  ///                 .predefinedMetricSpecification(PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs.builder()
  ///                     .predefinedMetricType("ASGAverageCPUUtilization")
  ///                     .build())
  ///                 .targetValue(40.0)
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: aws:autoscaling:Policy
  ///     properties:
  ///       targetTrackingConfiguration:
  ///         predefinedMetricSpecification:
  ///           predefinedMetricType: ASGAverageCPUUtilization
  ///         targetValue: 40
  /// ```
  ///
  ///
  /// The following fields are available in target tracking configuration:
  final pulumi.Input<PolicyTargetTrackingConfiguration>? targetTrackingConfiguration;

  /// Creates a new [PolicyState].
  /// [adjustmentType] Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  /// [arn] ARN assigned by AWS to the scaling policy.
  /// [autoscalingGroupName] Name of the autoscaling group.
  /// [cooldown] Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  /// [enabled] Whether the scaling policy is enabled or disabled. Default: `true`.
  /// [estimatedInstanceWarmup] Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  /// [metricAggregationType] Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  /// [minAdjustmentMagnitude] Minimum value to scale by when `adjustment_type` is set to `PercentChangeInCapacity`.
  /// [name] Name of the policy.
  /// [policyType] Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  /// [predictiveScalingConfiguration] Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingAdjustment] Number of members by which to
  /// [stepAdjustments] Set of adjustments that manage
  /// [targetTrackingConfiguration] Target tracking policy. These have the following structure:
  const PolicyState({
    this.adjustmentType,
    this.arn,
    this.autoscalingGroupName,
    this.cooldown,
    this.enabled,
    this.estimatedInstanceWarmup,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.name,
    this.policyType,
    this.predictiveScalingConfiguration,
    this.region,
    this.scalingAdjustment,
    this.stepAdjustments,
    this.targetTrackingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'arn': ?arn,
      'autoscalingGroupName': ?autoscalingGroupName,
      'cooldown': ?cooldown,
      'enabled': ?enabled,
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'metricAggregationType': ?metricAggregationType,
      'minAdjustmentMagnitude': ?minAdjustmentMagnitude,
      'name': ?name,
      'policyType': ?policyType,
      'predictiveScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfiguration, Map<String, dynamic>>(predictiveScalingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'scalingAdjustment': ?scalingAdjustment,
      'stepAdjustments': ?pulumi.Input.mapOptionalInputValue<List<PolicyStepAdjustment>, List<Map<String, dynamic>>>(stepAdjustments, (value) => pulumi.Input.encodeList<PolicyStepAdjustment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetTrackingConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingConfiguration, Map<String, dynamic>>(targetTrackingConfiguration, (value) => value.toMap()),
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      adjustmentType: (() { final guardedValue = map['adjustmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoscalingGroupName: (() { final guardedValue = map['autoscalingGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cooldown: (() { final guardedValue = map['cooldown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      estimatedInstanceWarmup: (() { final guardedValue = map['estimatedInstanceWarmup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metricAggregationType: (() { final guardedValue = map['metricAggregationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minAdjustmentMagnitude: (() { final guardedValue = map['minAdjustmentMagnitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictiveScalingConfiguration: (() { final guardedValue = map['predictiveScalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingAdjustment: (() { final guardedValue = map['scalingAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stepAdjustments: (() { final guardedValue = map['stepAdjustments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyStepAdjustment>(guardedValue, (value) => PolicyStepAdjustment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetTrackingConfiguration: (() { final guardedValue = map['targetTrackingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

