// ignore_for_file: unused_element, unnecessary_cast

import '../policy_target_tracking_scaling_policy_configuration_customized_metric_specification/policy_target_tracking_scaling_policy_configuration_customized_metric_specification.dart';
import '../policy_target_tracking_scaling_policy_configuration_predefined_metric_specification/policy_target_tracking_scaling_policy_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingScalingPolicyConfiguration {
  /// Custom CloudWatch metric. Documentation can be found  at: [AWS Customized Metric Specification](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CustomizedMetricSpecification.html). See supported fields below.
  final PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification?
      customizedMetricSpecification;

  /// Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is `false`.
  final bool? disableScaleIn;

  /// Predefined metric. See supported fields below.
  final PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification?
      predefinedMetricSpecification;

  /// Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  final int? scaleInCooldown;

  /// Amount of time, in seconds, after a scale out activity completes before another scale out activity can start.
  final int? scaleOutCooldown;

  /// Target value for the metric.
  final double targetValue;

  PolicyTargetTrackingScalingPolicyConfiguration({
    this.customizedMetricSpecification,
    this.disableScaleIn,
    this.predefinedMetricSpecification,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customizedMetricSpecificationValue = customizedMetricSpecification;
    if (customizedMetricSpecificationValue != null) {
      map['customizedMetricSpecification'] =
          customizedMetricSpecificationValue.toMap();
    }
    final disableScaleInValue = disableScaleIn;
    if (disableScaleInValue != null) {
      map['disableScaleIn'] = disableScaleInValue;
    }
    final predefinedMetricSpecificationValue = predefinedMetricSpecification;
    if (predefinedMetricSpecificationValue != null) {
      map['predefinedMetricSpecification'] =
          predefinedMetricSpecificationValue.toMap();
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

  factory PolicyTargetTrackingScalingPolicyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfiguration(
      customizedMetricSpecification: map['customizedMetricSpecification'] ==
              null
          ? null
          : PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification
              .fromMap((map['customizedMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      disableScaleIn:
          map['disableScaleIn'] == null ? null : map['disableScaleIn'] as bool,
      predefinedMetricSpecification: map['predefinedMetricSpecification'] ==
              null
          ? null
          : PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification
              .fromMap((map['predefinedMetricSpecification'] as Map)
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
