// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList {
  /// The comparison operator that is used to compare the metric value with the threshold.
  final String comparisonOperator;
  /// The name of the metric.
  final String metricName;
  /// The aggregation period of the metric.
  final int period;
  /// The statistical methods for Warn-level alerts.
  final String statistics;
  /// The threshold for Warn-level alerts.
  final String threshold;

  /// Creates a new [GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList].
  /// [comparisonOperator] The comparison operator that is used to compare the metric value with the threshold.
  /// [metricName] The name of the metric.
  /// [period] The aggregation period of the metric.
  /// [statistics] The statistical methods for Warn-level alerts.
  /// [threshold] The threshold for Warn-level alerts.
  GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList({
    required this.comparisonOperator,
    required this.metricName,
    required this.period,
    required this.statistics,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'metricName': metricName,
      'period': period,
      'statistics': statistics,
      'threshold': threshold,
    };
  }

  factory GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList(
      comparisonOperator: map['comparisonOperator'] as String,
      metricName: map['metricName'] as String,
      period: map['period'] as int,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
    );
  }
}

