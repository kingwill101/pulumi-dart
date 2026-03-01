// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
