// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification.dart';
import 'policy_target_tracking_scaling_policy_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingScalingPolicyConfiguration {
  /// Custom CloudWatch metric. Documentation can be found  at: [AWS Customized Metric Specification](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CustomizedMetricSpecification.html). See supported fields below.
  final pulumi.Input<
    PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification
  >?
  customizedMetricSpecification;

  /// Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is `false`.
  final pulumi.Input<bool>? disableScaleIn;

  /// Predefined metric. See supported fields below.
  final pulumi.Input<
    PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification
  >?
  predefinedMetricSpecification;

  /// Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  final pulumi.Input<int>? scaleInCooldown;

  /// Amount of time, in seconds, after a scale out activity completes before another scale out activity can start.
  final pulumi.Input<int>? scaleOutCooldown;

  /// Target value for the metric.
  final pulumi.Input<double> targetValue;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfiguration].
  /// [customizedMetricSpecification] Custom CloudWatch metric. Documentation can be found  at: [AWS Customized Metric Specification](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CustomizedMetricSpecification.html). See supported fields below.
  /// [disableScaleIn] Whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is `false`.
  /// [predefinedMetricSpecification] Predefined metric. See supported fields below.
  /// [scaleInCooldown] Amount of time, in seconds, after a scale in activity completes before another scale in activity can start.
  /// [scaleOutCooldown] Amount of time, in seconds, after a scale out activity completes before another scale out activity can start.
  /// [targetValue] Target value for the metric.
  PolicyTargetTrackingScalingPolicyConfiguration({
    this.customizedMetricSpecification,
    this.disableScaleIn,
    this.predefinedMetricSpecification,
    this.scaleInCooldown,
    this.scaleOutCooldown,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizedMetricSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification,
            Map<String, dynamic>
          >(customizedMetricSpecification, (value) => value.toMap()),
      'disableScaleIn': ?disableScaleIn,
      'predefinedMetricSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification,
            Map<String, dynamic>
          >(predefinedMetricSpecification, (value) => value.toMap()),
      'scaleInCooldown': ?scaleInCooldown,
      'scaleOutCooldown': ?scaleOutCooldown,
      'targetValue': targetValue,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingScalingPolicyConfiguration(
      customizedMetricSpecification: (() {
        final guardedValue = map['customizedMetricSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disableScaleIn: (() {
        final guardedValue = map['disableScaleIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      predefinedMetricSpecification: (() {
        final guardedValue = map['predefinedMetricSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scaleInCooldown: (() {
        final guardedValue = map['scaleInCooldown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaleOutCooldown: (() {
        final guardedValue = map['scaleOutCooldown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}
