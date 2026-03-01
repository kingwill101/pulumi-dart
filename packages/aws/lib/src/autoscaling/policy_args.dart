// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration.dart';
import 'policy_step_adjustment.dart';
import 'policy_target_tracking_configuration.dart';

/// {@template pulumi_autoscaling_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_policy_policy_args_doc}
class PolicyArgs {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final pulumi.Input<String>? adjustmentType;

  /// Name of the autoscaling group.
  final pulumi.Input<String> autoscalingGroupName;

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
  final pulumi.Input<PolicyPredictiveScalingConfiguration>?
  predictiveScalingConfiguration;

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
  final pulumi.Input<PolicyTargetTrackingConfiguration>?
  targetTrackingConfiguration;

  /// Creates a new [PolicyArgs].
  /// [adjustmentType] Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
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
  PolicyArgs({
    String? adjustmentType,
    required String autoscalingGroupName,
    int? cooldown,
    bool? enabled,
    int? estimatedInstanceWarmup,
    String? metricAggregationType,
    int? minAdjustmentMagnitude,
    String? name,
    String? policyType,
    PolicyPredictiveScalingConfiguration? predictiveScalingConfiguration,
    String? region,
    int? scalingAdjustment,
    List<PolicyStepAdjustment>? stepAdjustments,
    PolicyTargetTrackingConfiguration? targetTrackingConfiguration,
  }) : adjustmentType = pulumi.Input.asOptionalInput<String>(adjustmentType),
       autoscalingGroupName = pulumi.Input.asInput<String>(
         autoscalingGroupName,
       ),
       cooldown = pulumi.Input.asOptionalInput<int>(cooldown),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       estimatedInstanceWarmup = pulumi.Input.asOptionalInput<int>(
         estimatedInstanceWarmup,
       ),
       metricAggregationType = pulumi.Input.asOptionalInput<String>(
         metricAggregationType,
       ),
       minAdjustmentMagnitude = pulumi.Input.asOptionalInput<int>(
         minAdjustmentMagnitude,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       policyType = pulumi.Input.asOptionalInput<String>(policyType),
       predictiveScalingConfiguration =
           pulumi.Input.asOptionalInput<PolicyPredictiveScalingConfiguration>(
             predictiveScalingConfiguration,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       scalingAdjustment = pulumi.Input.asOptionalInput<int>(scalingAdjustment),
       stepAdjustments = pulumi
           .Input.asOptionalInput<List<PolicyStepAdjustment>>(stepAdjustments),
       targetTrackingConfiguration =
           pulumi.Input.asOptionalInput<PolicyTargetTrackingConfiguration>(
             targetTrackingConfiguration,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'autoscalingGroupName': autoscalingGroupName,
      'cooldown': ?cooldown,
      'enabled': ?enabled,
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'metricAggregationType': ?metricAggregationType,
      'minAdjustmentMagnitude': ?minAdjustmentMagnitude,
      'name': ?name,
      'policyType': ?policyType,
      'predictiveScalingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyPredictiveScalingConfiguration,
            Map<String, dynamic>
          >(predictiveScalingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'scalingAdjustment': ?scalingAdjustment,
      'stepAdjustments':
          ?pulumi.Input.mapOptionalInputValue<
            List<PolicyStepAdjustment>,
            List<Map<String, dynamic>>
          >(
            stepAdjustments,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyStepAdjustment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetTrackingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyTargetTrackingConfiguration,
            Map<String, dynamic>
          >(targetTrackingConfiguration, (value) => value.toMap()),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      adjustmentType: map['adjustmentType'] == null
          ? null
          : map['adjustmentType'] as String,
      autoscalingGroupName: map['autoscalingGroupName'] as String,
      cooldown: map['cooldown'] == null ? null : map['cooldown'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null
          ? null
          : map['estimatedInstanceWarmup'] as int,
      metricAggregationType: map['metricAggregationType'] == null
          ? null
          : map['metricAggregationType'] as String,
      minAdjustmentMagnitude: map['minAdjustmentMagnitude'] == null
          ? null
          : map['minAdjustmentMagnitude'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      policyType: map['policyType'] == null
          ? null
          : map['policyType'] as String,
      predictiveScalingConfiguration:
          map['predictiveScalingConfiguration'] == null
          ? null
          : PolicyPredictiveScalingConfiguration.fromMap(
              (map['predictiveScalingConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      scalingAdjustment: map['scalingAdjustment'] == null
          ? null
          : map['scalingAdjustment'] as int,
      stepAdjustments: map['stepAdjustments'] == null
          ? null
          : pulumi.Input.decodeList<PolicyStepAdjustment>(
              map['stepAdjustments'],
              (value) => PolicyStepAdjustment.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      targetTrackingConfiguration: map['targetTrackingConfiguration'] == null
          ? null
          : PolicyTargetTrackingConfiguration.fromMap(
              (map['targetTrackingConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
