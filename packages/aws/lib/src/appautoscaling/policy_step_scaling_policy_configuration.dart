// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_step_scaling_policy_configuration_step_adjustment.dart';

class PolicyStepScalingPolicyConfiguration {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final String? adjustmentType;

  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final int? cooldown;

  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  final String? metricAggregationType;

  /// Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount.
  final int? minAdjustmentMagnitude;

  /// Set of adjustments that manage scaling. These have the following structure:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const ecsPolicy = new aws.appautoscaling.Policy("ecs_policy", {stepScalingPolicyConfiguration: {
  ///     stepAdjustments: [
  ///         {
  ///             metricIntervalLowerBound: "1",
  ///             metricIntervalUpperBound: "2",
  ///             scalingAdjustment: -1,
  ///         },
  ///         {
  ///             metricIntervalLowerBound: "2",
  ///             metricIntervalUpperBound: "3",
  ///             scalingAdjustment: 1,
  ///         },
  ///     ],
  /// }});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// ecs_policy = aws.appautoscaling.Policy("ecs_policy", step_scaling_policy_configuration={
  ///     "step_adjustments": [
  ///         {
  ///             "metric_interval_lower_bound": "1",
  ///             "metric_interval_upper_bound": "2",
  ///             "scaling_adjustment": -1,
  ///         },
  ///         {
  ///             "metric_interval_lower_bound": "2",
  ///             "metric_interval_upper_bound": "3",
  ///             "scaling_adjustment": 1,
  ///         },
  ///     ],
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
  ///     var ecsPolicy = new Aws.AppAutoScaling.Policy("ecs_policy", new()
  ///     {
  ///         StepScalingPolicyConfiguration = new Aws.AppAutoScaling.Inputs.PolicyStepScalingPolicyConfigurationArgs
  ///         {
  ///             StepAdjustments = new[]
  ///             {
  ///                 new Aws.AppAutoScaling.Inputs.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs
  ///                 {
  ///                     MetricIntervalLowerBound = "1",
  ///                     MetricIntervalUpperBound = "2",
  ///                     ScalingAdjustment = -1,
  ///                 },
  ///                 new Aws.AppAutoScaling.Inputs.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs
  ///                 {
  ///                     MetricIntervalLowerBound = "2",
  ///                     MetricIntervalUpperBound = "3",
  ///                     ScalingAdjustment = 1,
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
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appautoscaling"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := appautoscaling.NewPolicy(ctx, "ecs_policy", &appautoscaling.PolicyArgs{
  /// 			StepScalingPolicyConfiguration: &appautoscaling.PolicyStepScalingPolicyConfigurationArgs{
  /// 				StepAdjustments: appautoscaling.PolicyStepScalingPolicyConfigurationStepAdjustmentArray{
  /// 					&appautoscaling.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs{
  /// 						MetricIntervalLowerBound: pulumi.String("1"),
  /// 						MetricIntervalUpperBound: pulumi.String("2"),
  /// 						ScalingAdjustment:        pulumi.Int(-1),
  /// 					},
  /// 					&appautoscaling.PolicyStepScalingPolicyConfigurationStepAdjustmentArgs{
  /// 						MetricIntervalLowerBound: pulumi.String("2"),
  /// 						MetricIntervalUpperBound: pulumi.String("3"),
  /// 						ScalingAdjustment:        pulumi.Int(1),
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
  /// import com.pulumi.aws.appautoscaling.Policy;
  /// import com.pulumi.aws.appautoscaling.PolicyArgs;
  /// import com.pulumi.aws.appautoscaling.inputs.PolicyStepScalingPolicyConfigurationArgs;
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
  ///         var ecsPolicy = new Policy("ecsPolicy", PolicyArgs.builder()
  ///             .stepScalingPolicyConfiguration(PolicyStepScalingPolicyConfigurationArgs.builder()
  ///                 .stepAdjustments(
  ///                     PolicyStepScalingPolicyConfigurationStepAdjustmentArgs.builder()
  ///                         .metricIntervalLowerBound("1")
  ///                         .metricIntervalUpperBound("2")
  ///                         .scalingAdjustment(-1)
  ///                         .build(),
  ///                     PolicyStepScalingPolicyConfigurationStepAdjustmentArgs.builder()
  ///                         .metricIntervalLowerBound("2")
  ///                         .metricIntervalUpperBound("3")
  ///                         .scalingAdjustment(1)
  ///                         .build())
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   ecsPolicy:
  ///     type: aws:appautoscaling:Policy
  ///     name: ecs_policy
  ///     properties:
  ///       stepScalingPolicyConfiguration:
  ///         stepAdjustments:
  ///           - metricIntervalLowerBound: 1
  ///             metricIntervalUpperBound: 2
  ///             scalingAdjustment: -1
  ///           - metricIntervalLowerBound: 2
  ///             metricIntervalUpperBound: 3
  ///             scalingAdjustment: 1
  /// ```
  final List<PolicyStepScalingPolicyConfigurationStepAdjustment>?
      stepAdjustments;

  /// Creates a new [PolicyStepScalingPolicyConfiguration].
  /// [adjustmentType] Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  /// [cooldown] Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  /// [metricAggregationType] Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  /// [minAdjustmentMagnitude] Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount.
  /// [stepAdjustments] Set of adjustments that manage scaling. These have the following structure:
  PolicyStepScalingPolicyConfiguration({
    this.adjustmentType,
    this.cooldown,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.stepAdjustments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjustmentTypeValue = adjustmentType;
    if (adjustmentTypeValue != null) {
      map['adjustmentType'] = adjustmentTypeValue;
    }
    final cooldownValue = cooldown;
    if (cooldownValue != null) {
      map['cooldown'] = cooldownValue;
    }
    final metricAggregationTypeValue = metricAggregationType;
    if (metricAggregationTypeValue != null) {
      map['metricAggregationType'] = metricAggregationTypeValue;
    }
    final minAdjustmentMagnitudeValue = minAdjustmentMagnitude;
    if (minAdjustmentMagnitudeValue != null) {
      map['minAdjustmentMagnitude'] = minAdjustmentMagnitudeValue;
    }
    final stepAdjustmentsValue = stepAdjustments;
    if (stepAdjustmentsValue != null) {
      map['stepAdjustments'] = pulumi.Input.encodeList<
          PolicyStepScalingPolicyConfigurationStepAdjustment,
          Map<String, dynamic>>(stepAdjustmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyStepScalingPolicyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PolicyStepScalingPolicyConfiguration(
      adjustmentType: map['adjustmentType'] == null
          ? null
          : map['adjustmentType'] as String,
      cooldown: map['cooldown'] == null ? null : map['cooldown'] as int,
      metricAggregationType: map['metricAggregationType'] == null
          ? null
          : map['metricAggregationType'] as String,
      minAdjustmentMagnitude: map['minAdjustmentMagnitude'] == null
          ? null
          : map['minAdjustmentMagnitude'] as int,
      stepAdjustments: map['stepAdjustments'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyStepScalingPolicyConfigurationStepAdjustment>(
              map['stepAdjustments'],
              (value) =>
                  PolicyStepScalingPolicyConfigurationStepAdjustment.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
