// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_scaling_instruction_target_tracking_configuration_customized_scaling_metric_specification.dart';
import 'scaling_plan_scaling_instruction_target_tracking_configuration_predefined_scaling_metric_specification.dart';

class ScalingPlanScalingInstructionTargetTrackingConfiguration {
  /// Customized metric. You can specify either `customized_scaling_metric_specification` or `predefined_scaling_metric_specification`.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_CustomizedScalingMetricSpecification.html).
  final pulumi.Input<ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification>? customizedScalingMetricSpecification;
  /// Boolean indicating whether scale in by the target tracking scaling policy is disabled. Defaults to `false`.
  final pulumi.Input<bool>? disableScaleIn;
  /// Estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
  /// This value is used only if the resource is an Auto Scaling group.
  final pulumi.Input<int>? estimatedInstanceWarmup;
  /// Predefined metric. You can specify either `predefined_scaling_metric_specification` or `customized_scaling_metric_specification`.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html).
  final pulumi.Input<ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification>? predefinedScalingMetricSpecification;
  /// Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  /// This value is not used if the scalable resource is an Auto Scaling group.
  final pulumi.Input<int>? scaleInCooldown;
  /// Amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
  /// This value is not used if the scalable resource is an Auto Scaling group.
  final pulumi.Input<int>? scaleOutCooldown;
  /// Target value for the metric.
  final pulumi.Input<double> targetValue;

  /// Creates a new [ScalingPlanScalingInstructionTargetTrackingConfiguration].
  /// [customizedScalingMetricSpecification] Customized metric. You can specify either `customized_scaling_metric_specification` or `predefined_scaling_metric_specification`.
  /// [disableScaleIn] Boolean indicating whether scale in by the target tracking scaling policy is disabled. Defaults to `false`.
  /// [estimatedInstanceWarmup] Estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
  /// [predefinedScalingMetricSpecification] Predefined metric. You can specify either `predefined_scaling_metric_specification` or `customized_scaling_metric_specification`.
  /// [scaleInCooldown] Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  /// [scaleOutCooldown] Amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
  /// [targetValue] Target value for the metric.
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
    return <String, dynamic>{
      'customizedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification, Map<String, dynamic>>(customizedScalingMetricSpecification, (value) => value.toMap()),
      'disableScaleIn': ?disableScaleIn,
      'estimatedInstanceWarmup': ?estimatedInstanceWarmup,
      'predefinedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification, Map<String, dynamic>>(predefinedScalingMetricSpecification, (value) => value.toMap()),
      'scaleInCooldown': ?scaleInCooldown,
      'scaleOutCooldown': ?scaleOutCooldown,
      'targetValue': targetValue,
    };
  }

  factory ScalingPlanScalingInstructionTargetTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionTargetTrackingConfiguration(
      customizedScalingMetricSpecification: map['customizedScalingMetricSpecification'] == null ? null : ((ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification.fromMap((map['customizedScalingMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      disableScaleIn: map['disableScaleIn'] == null ? null : ((map['disableScaleIn'] as bool).input()).input(),
      estimatedInstanceWarmup: map['estimatedInstanceWarmup'] == null ? null : ((map['estimatedInstanceWarmup'] as int).input()).input(),
      predefinedScalingMetricSpecification: map['predefinedScalingMetricSpecification'] == null ? null : ((ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecification.fromMap((map['predefinedScalingMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      scaleInCooldown: map['scaleInCooldown'] == null ? null : ((map['scaleInCooldown'] as int).input()).input(),
      scaleOutCooldown: map['scaleOutCooldown'] == null ? null : ((map['scaleOutCooldown'] as int).input()).input(),
      targetValue: (map['targetValue'] as double).input(),
    );
  }
}

