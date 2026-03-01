// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMetricRulesRuleEscalationInfo {
  /// The comparison operator of the threshold for info-level alerts.
  final String comparisonOperator;
  /// The statistical aggregation method for info-level alerts.
  final String statistics;
  /// The threshold for info-level alerts.
  final String threshold;
  /// The consecutive number of times for which the metric value is measured before a info-level alert is triggered.
  final int times;

  /// Creates a new [GetGroupMetricRulesRuleEscalationInfo].
  /// [comparisonOperator] The comparison operator of the threshold for info-level alerts.
  /// [statistics] The statistical aggregation method for info-level alerts.
  /// [threshold] The threshold for info-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a info-level alert is triggered.
  GetGroupMetricRulesRuleEscalationInfo({
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

  factory GetGroupMetricRulesRuleEscalationInfo.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesRuleEscalationInfo(
      comparisonOperator: map['comparisonOperator'] as String,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
      times: map['times'] as int,
    );
  }
}

