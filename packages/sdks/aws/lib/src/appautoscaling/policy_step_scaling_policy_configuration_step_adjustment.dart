// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyStepScalingPolicyConfigurationStepAdjustment {
  /// Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS treats this bound as negative infinity.
  final pulumi.Input<String?>? metricIntervalLowerBound;
  /// Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS treats this bound as infinity. The upper bound must be greater than the lower bound.
  final pulumi.Input<String?>? metricIntervalUpperBound;
  /// Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.
  final pulumi.Input<int> scalingAdjustment;

  /// Creates a new [PolicyStepScalingPolicyConfigurationStepAdjustment].
  /// [metricIntervalLowerBound] Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS treats this bound as negative infinity.
  /// [metricIntervalUpperBound] Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS treats this bound as infinity. The upper bound must be greater than the lower bound.
  /// [scalingAdjustment] Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.
  const PolicyStepScalingPolicyConfigurationStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricIntervalLowerBound': ?metricIntervalLowerBound,
      'metricIntervalUpperBound': ?metricIntervalUpperBound,
      'scalingAdjustment': scalingAdjustment,
    };
  }

  factory PolicyStepScalingPolicyConfigurationStepAdjustment.fromMap(Map<String, dynamic> map) {
    return PolicyStepScalingPolicyConfigurationStepAdjustment(
      metricIntervalLowerBound: (() { final guardedValue = map['metricIntervalLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricIntervalUpperBound: (() { final guardedValue = map['metricIntervalUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingAdjustment: pulumi.Input.fromValue((map['scalingAdjustment'] as num).toInt()),
    );
  }
}
