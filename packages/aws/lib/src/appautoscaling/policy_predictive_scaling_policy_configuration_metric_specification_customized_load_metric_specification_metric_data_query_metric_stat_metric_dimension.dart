// ignore_for_file: unused_element, unnecessary_cast

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension {
  /// Name of the dimension.
  final String name;

  /// Value of the dimension.
  final String value;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
