// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
