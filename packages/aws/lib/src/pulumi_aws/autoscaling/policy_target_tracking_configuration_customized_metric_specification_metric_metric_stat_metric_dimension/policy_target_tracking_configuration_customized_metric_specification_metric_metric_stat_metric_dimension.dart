// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
