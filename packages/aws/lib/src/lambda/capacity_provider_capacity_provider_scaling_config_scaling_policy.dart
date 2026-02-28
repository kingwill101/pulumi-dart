// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderCapacityProviderScalingConfigScalingPolicy {
  /// The predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  final String predefinedMetricType;

  /// The target value for the scaling policy.
  final double targetValue;

  /// Creates a new [CapacityProviderCapacityProviderScalingConfigScalingPolicy].
  /// [predefinedMetricType] The predefined metric type for the scaling policy. Valid values are `"LambdaCapacityProviderAverageCPUUtilization"`.
  /// [targetValue] The target value for the scaling policy.
  CapacityProviderCapacityProviderScalingConfigScalingPolicy({
    required this.predefinedMetricType,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedMetricType'] = predefinedMetricType;
    map['targetValue'] = targetValue;
    return map;
  }

  factory CapacityProviderCapacityProviderScalingConfigScalingPolicy.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderCapacityProviderScalingConfigScalingPolicy(
      predefinedMetricType: map['predefinedMetricType'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}
