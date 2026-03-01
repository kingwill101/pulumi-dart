// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationScalingRulesRuleScalingRuleMetricMetric {
  /// The target value of the monitoring indicator.
  final int metricTargetAverageUtilization;
  /// The metric type of the Application Scaling Rule.
  final String metricType;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricMetric].
  /// [metricTargetAverageUtilization] The target value of the monitoring indicator.
  /// [metricType] The metric type of the Application Scaling Rule.
  GetApplicationScalingRulesRuleScalingRuleMetricMetric({
    required this.metricTargetAverageUtilization,
    required this.metricType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTargetAverageUtilization': metricTargetAverageUtilization,
      'metricType': metricType,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetric.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetric(
      metricTargetAverageUtilization: map['metricTargetAverageUtilization'] as int,
      metricType: map['metricType'] as String,
    );
  }
}

