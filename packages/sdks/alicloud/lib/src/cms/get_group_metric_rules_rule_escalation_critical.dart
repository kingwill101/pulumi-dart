// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMetricRulesRuleEscalationCritical {
  /// The comparison operator of the threshold for critical-level alerts.
  final pulumi.Input<String> comparisonOperator;
  /// The statistical aggregation method for critical-level alerts.
  final pulumi.Input<String> statistics;
  /// The threshold for critical-level alerts.
  final pulumi.Input<String> threshold;
  /// The consecutive number of times for which the metric value is measured before a critical-level alert is triggered.
  final pulumi.Input<int> times;

  /// Creates a new [GetGroupMetricRulesRuleEscalationCritical].
  /// [comparisonOperator] The comparison operator of the threshold for critical-level alerts.
  /// [statistics] The statistical aggregation method for critical-level alerts.
  /// [threshold] The threshold for critical-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a critical-level alert is triggered.
  GetGroupMetricRulesRuleEscalationCritical({
    required this.comparisonOperator,
    required this.statistics,
    required this.threshold,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'statistics': statistics,
      'threshold': threshold,
      'times': times,
    };
  }

  factory GetGroupMetricRulesRuleEscalationCritical.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesRuleEscalationCritical(
      comparisonOperator: (map['comparisonOperator'] as String).input(),
      statistics: (map['statistics'] as String).input(),
      threshold: (map['threshold'] as String).input(),
      times: (map['times'] as int).input(),
    );
  }
}

