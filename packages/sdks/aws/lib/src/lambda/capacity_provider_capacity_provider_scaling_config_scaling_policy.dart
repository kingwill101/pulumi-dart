// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderCapacityProviderScalingConfigScalingPolicy {
  /// Predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  final pulumi.Input<String> predefinedMetricType;
  /// Target value for the scaling policy.
  final pulumi.Input<double> targetValue;

  /// Creates a new [CapacityProviderCapacityProviderScalingConfigScalingPolicy].
  /// [predefinedMetricType] Predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  /// [targetValue] Target value for the scaling policy.
  const CapacityProviderCapacityProviderScalingConfigScalingPolicy({
    required this.predefinedMetricType,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'targetValue': targetValue,
    };
  }

  factory CapacityProviderCapacityProviderScalingConfigScalingPolicy.fromMap(Map<String, dynamic> map) {
    return CapacityProviderCapacityProviderScalingConfigScalingPolicy(
      predefinedMetricType: pulumi.Input.fromValue(map['predefinedMetricType'] as String),
      targetValue: pulumi.Input.fromValue((map['targetValue'] as num).toDouble()),
    );
  }
}
