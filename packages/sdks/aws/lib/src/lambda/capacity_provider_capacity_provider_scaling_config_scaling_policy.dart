// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderCapacityProviderScalingConfigScalingPolicy {
  /// The predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  final pulumi.Input<String> predefinedMetricType;
  /// The target value for the scaling policy.
  final pulumi.Input<double> targetValue;

  /// Creates a new [CapacityProviderCapacityProviderScalingConfigScalingPolicy].
  /// [predefinedMetricType] The predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  /// [targetValue] The target value for the scaling policy.
  CapacityProviderCapacityProviderScalingConfigScalingPolicy({
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
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}

