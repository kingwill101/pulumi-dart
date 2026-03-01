// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
