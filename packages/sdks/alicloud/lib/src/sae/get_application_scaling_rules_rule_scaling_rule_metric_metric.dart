// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleMetricMetric {
  /// The target value of the monitoring indicator.
  final pulumi.Input<int> metricTargetAverageUtilization;

  /// The metric type of the Application Scaling Rule.
  final pulumi.Input<String> metricType;

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

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetric.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetric(
      metricTargetAverageUtilization: pulumi.Input.fromValue(
        map['metricTargetAverageUtilization'] as int,
      ),
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
    );
  }
}
