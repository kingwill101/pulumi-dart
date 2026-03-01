// ignore_for_file: unused_element, unnecessary_cast


class GetScheduledQueryRulesAlertTriggerMetricTrigger {
  final String metricColumn;
  final String metricTriggerType;
  /// Evaluation operation for rule.
  final String operator;
  /// Result or count threshold based on which rule should be triggered.
  final double threshold;

  /// Creates a new [GetScheduledQueryRulesAlertTriggerMetricTrigger].
  /// [metricColumn] Required.
  /// [metricTriggerType] Required.
  /// [operator] Evaluation operation for rule.
  /// [threshold] Result or count threshold based on which rule should be triggered.
  GetScheduledQueryRulesAlertTriggerMetricTrigger({
    required this.metricColumn,
    required this.metricTriggerType,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricColumn': metricColumn,
      'metricTriggerType': metricTriggerType,
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory GetScheduledQueryRulesAlertTriggerMetricTrigger.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertTriggerMetricTrigger(
      metricColumn: map['metricColumn'] as String,
      metricTriggerType: map['metricTriggerType'] as String,
      operator: map['operator'] as String,
      threshold: map['threshold'] as double,
    );
  }
}

