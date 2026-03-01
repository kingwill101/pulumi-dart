// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMetricRulesRuleEscalationCritical {
  /// The comparison operator of the threshold for critical-level alerts.
  final String comparisonOperator;
  /// The statistical aggregation method for critical-level alerts.
  final String statistics;
  /// The threshold for critical-level alerts.
  final String threshold;
  /// The consecutive number of times for which the metric value is measured before a critical-level alert is triggered.
  final int times;

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
      comparisonOperator: map['comparisonOperator'] as String,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
      times: map['times'] as int,
    );
  }
}

