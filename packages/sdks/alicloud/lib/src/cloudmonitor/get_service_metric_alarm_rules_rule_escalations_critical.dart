// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMetricAlarmRulesRuleEscalationsCritical {
  /// The comparison operator that is used to compare the metric value with the threshold.
  final String comparisonOperator;
  /// The additional conditions for triggering Warn-level alerts.
  final String preCondition;
  /// The statistical methods for Warn-level alerts.
  final String statistics;
  /// The threshold for Warn-level alerts.
  final String threshold;
  /// The number of consecutive triggers.
  final int times;

  /// Creates a new [GetServiceMetricAlarmRulesRuleEscalationsCritical].
  /// [comparisonOperator] The comparison operator that is used to compare the metric value with the threshold.
  /// [preCondition] The additional conditions for triggering Warn-level alerts.
  /// [statistics] The statistical methods for Warn-level alerts.
  /// [threshold] The threshold for Warn-level alerts.
  /// [times] The number of consecutive triggers.
  GetServiceMetricAlarmRulesRuleEscalationsCritical({
    required this.comparisonOperator,
    required this.preCondition,
    required this.statistics,
    required this.threshold,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'preCondition': preCondition,
      'statistics': statistics,
      'threshold': threshold,
      'times': times,
    };
  }

  factory GetServiceMetricAlarmRulesRuleEscalationsCritical.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRuleEscalationsCritical(
      comparisonOperator: map['comparisonOperator'] as String,
      preCondition: map['preCondition'] as String,
      statistics: map['statistics'] as String,
      threshold: map['threshold'] as String,
      times: map['times'] as int,
    );
  }
}

