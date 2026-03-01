// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric {
  /// The name of the trigger condition.
  final String name;
  /// The percentage value of the monitoring indicator elasticity that triggers the shrinkage condition next time.
  final int nextScaleInAverageUtilization;
  /// The percentage value of the monitoring indicator elasticity that triggers the expansion condition next time.
  final int nextScaleOutAverageUtilization;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric].
  /// [name] The name of the trigger condition.
  /// [nextScaleInAverageUtilization] The percentage value of the monitoring indicator elasticity that triggers the shrinkage condition next time.
  /// [nextScaleOutAverageUtilization] The percentage value of the monitoring indicator elasticity that triggers the expansion condition next time.
  GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric({
    required this.name,
    required this.nextScaleInAverageUtilization,
    required this.nextScaleOutAverageUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nextScaleInAverageUtilization': nextScaleInAverageUtilization,
      'nextScaleOutAverageUtilization': nextScaleOutAverageUtilization,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric(
      name: map['name'] as String,
      nextScaleInAverageUtilization: map['nextScaleInAverageUtilization'] as int,
      nextScaleOutAverageUtilization: map['nextScaleOutAverageUtilization'] as int,
    );
  }
}

