// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
