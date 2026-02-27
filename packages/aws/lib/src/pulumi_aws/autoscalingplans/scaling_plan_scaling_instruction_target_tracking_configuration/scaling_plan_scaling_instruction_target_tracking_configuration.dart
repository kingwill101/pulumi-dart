// ignore_for_file: unused_element, unnecessary_cast

import '../scaling_plan_scaling_instruction_target_tracking_configuration_customized_scaling_metric_specification/scaling_plan_scaling_instruction_target_tracking_configuration_customized_scaling_metric_specification.dart';
import '../scaling_plan_scaling_instruction_target_tracking_configuration_predefined_scaling_metric_specification/scaling_plan_scaling_instruction_target_tracking_configuration_predefined_scaling_metric_specification.dart';

class ScalingPlanScalingInstructionTargetTrackingConfiguration {
  /// Customized metric. You can specify either `customized_scaling_metric_specification` or `predefined_scaling_metric_specification`.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_CustomizedScalingMetricSpecification.html).
  final ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification?
      customizedScalingMetricSpecification;

  /// Boolean indicating whether scale in by the target tracking scaling policy is disabled. Defaults to `false`.
  final bool? disableScaleIn;

  /// Estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
  /// This value is used only if the resource is an Auto Scaling group.
  final int? estimatedInstanceWarmup;

  /// Predefined metric. You can specify either `predefined_scaling_metric_specification` or `customized_scaling_metric_specification`.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html).
  final ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification?
      predefinedScalingMetricSpecification;

  /// Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  /// This value is not used if the scalable resource is an Auto Scaling group.
  final int? scaleInCooldown;

  /// Amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
  /// This value is not used if the scalable resource is an Auto Scaling group.
  final int? scaleOutCooldown;

  /// Target value for the metric.
  final double targetValue;

  ScalingPlanScalingInstructionTargetTrackingConfiguration({
    this.customizedScalingMetricSpecification,
    this.disableScaleIn,
    this.estimatedInstanceWarmup,
    this.predefinedScalingMetricSpecification,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customizedScalingMetricSpecificationValue =
        customizedScalingMetricSpecification;
    if (customizedScalingMetricSpecificationValue != null) {
      map['customizedScalingMetricSpecification'] =
          customizedScalingMetricSpecificationValue.toMap();
    }
    final disableScaleInValue = disableScaleIn;
    if (disableScaleInValue != null) {
      map['disableScaleIn'] = disableScaleInValue;
    }
    final estimatedInstanceWarmupValue = estimatedInstanceWarmup;
    if (estimatedInstanceWarmupValue != null) {
      map['estimatedInstanceWarmup'] = estimatedInstanceWarmupValue;
    }
    final predefinedScalingMetricSpecificationValue =
        predefinedScalingMetricSpecification;
    if (predefinedScalingMetricSpecificationValue != null) {
      map['predefinedScalingMetricSpecification'] =
          predefinedScalingMetricSpecificationValue.toMap();
    }
    final scaleInCooldownValue = scaleInCooldown;
    if (scaleInCooldownValue != null) {
      map['scaleInCooldown'] = scaleInCooldownValue;
    }
    final scaleOutCooldownValue = scaleOutCooldown;
    if (scaleOutCooldownValue != null) {
      map['scaleOutCooldown'] = scaleOutCooldownValue;
    }
    map['targetValue'] = targetValue;
    return map;
  }

  factory ScalingPlanScalingInstructionTargetTrackingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionTargetTrackingConfiguration(
      customizedScalingMetricSpecification: map[
                  'customizedScalingMetricSpecification'] ==
              null
          ? null
          : ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification
              .fromMap((map['customizedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      disableScaleIn:
          map['disableScaleIn'] == null ? null : map['disableScaleIn'] as bool,
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null
          ? null
          : map['estimatedInstanceWarmup'] as int,
      predefinedScalingMetricSpecification: map[
                  'predefinedScalingMetricSpecification'] ==
              null
          ? null
          : ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification
              .fromMap((map['predefinedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      scaleInCooldown:
          map['scaleInCooldown'] == null ? null : map['scaleInCooldown'] as int,
      scaleOutCooldown: map['scaleOutCooldown'] == null
          ? null
          : map['scaleOutCooldown'] as int,
      targetValue: map['targetValue'] as double,
    );
  }
}
