// ignore_for_file: unused_element, unnecessary_cast


class GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo {
  /// The comparison operator of the threshold for info-level alerts.Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final String comparisonOperator;
  /// The statistical aggregation method for info-level alerts.
  final String statistics;
  /// The threshold for info-level alerts.
  final String threshold;
  /// The consecutive number of times for which the metric value is measured before an info-level
  /// alert is triggered.
  final String times;

  /// Creates a new [GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo].
  /// [comparisonOperator] The comparison operator of the threshold for info-level alerts.Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  /// [statistics] The statistical aggregation method for info-level alerts.
  /// [threshold] The threshold for info-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before an info-level
  GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo({
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

  factory GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo(
      comparisonOperator: map['comparisonOperator'] as String,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
      times: map['times'] as String,
    );
  }
}

