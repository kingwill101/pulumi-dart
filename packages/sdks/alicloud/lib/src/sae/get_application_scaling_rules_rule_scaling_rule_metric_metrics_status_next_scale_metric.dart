// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric {
  /// The name of the trigger condition.
  final pulumi.Input<String> name;
  /// The percentage value of the monitoring indicator elasticity that triggers the shrinkage condition next time.
  final pulumi.Input<int> nextScaleInAverageUtilization;
  /// The percentage value of the monitoring indicator elasticity that triggers the expansion condition next time.
  final pulumi.Input<int> nextScaleOutAverageUtilization;

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
      name: (map['name'] as String).input(),
      nextScaleInAverageUtilization: (map['nextScaleInAverageUtilization'] as int).input(),
      nextScaleOutAverageUtilization: (map['nextScaleOutAverageUtilization'] as int).input(),
    );
  }
}

