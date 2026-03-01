// ignore_for_file: unused_element, unnecessary_cast


class MetricRuleTemplateAlertTemplateEscalationsWarn {
  /// The comparison operator of the threshold for warn-level alerts. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final String? comparisonOperator;
  /// The statistical aggregation method for warn-level alerts.
  final String? statistics;
  /// The threshold for warn-level alerts.
  final String? threshold;
  /// The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  final String? times;

  /// Creates a new [MetricRuleTemplateAlertTemplateEscalationsWarn].
  /// [comparisonOperator] The comparison operator of the threshold for warn-level alerts. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  /// [statistics] The statistical aggregation method for warn-level alerts.
  /// [threshold] The threshold for warn-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  MetricRuleTemplateAlertTemplateEscalationsWarn({
    this.comparisonOperator,
    this.statistics,
    this.threshold,
    this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': ?comparisonOperator,
      'statistics': ?statistics,
      'threshold': ?threshold,
      'times': ?times,
    };
  }

  factory MetricRuleTemplateAlertTemplateEscalationsWarn.fromMap(Map<String, dynamic> map) {
    return MetricRuleTemplateAlertTemplateEscalationsWarn(
      comparisonOperator: map['comparisonOperator'] == null ? null : map['comparisonOperator'] as String,
      statistics: map['statistics'] == null ? null : map['statistics'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as String,
      times: map['times'] == null ? null : map['times'] as String,
    );
  }
}

