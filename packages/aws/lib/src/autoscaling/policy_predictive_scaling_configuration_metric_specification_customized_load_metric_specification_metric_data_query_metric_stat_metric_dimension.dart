// ignore_for_file: unused_element, unnecessary_cast

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
