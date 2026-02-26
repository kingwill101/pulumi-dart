// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
