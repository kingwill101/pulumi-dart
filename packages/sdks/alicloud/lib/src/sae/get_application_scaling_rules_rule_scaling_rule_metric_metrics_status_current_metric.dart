// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric {
  /// The current value.
  final pulumi.Input<int> currentValue;
  /// The name of the trigger condition.
  final pulumi.Input<String> name;
  /// The metric type. Associated with monitoring indicators.
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric].
  /// [currentValue] The current value.
  /// [name] The name of the trigger condition.
  /// [type] The metric type. Associated with monitoring indicators.
  GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric({
    required this.currentValue,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentValue': currentValue,
      'name': name,
      'type': type,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric(
      currentValue: (map['currentValue'] as int).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

