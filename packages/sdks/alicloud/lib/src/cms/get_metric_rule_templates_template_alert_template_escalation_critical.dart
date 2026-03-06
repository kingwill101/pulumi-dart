// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical {
  /// The comparison operator of the threshold for critical-level alerts.Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final pulumi.Input<String> comparisonOperator;
  /// The statistical aggregation method for critical-level alerts.
  final pulumi.Input<String> statistics;
  /// The threshold for critical-level alerts.
  final pulumi.Input<String> threshold;
  /// The consecutive number of times for which the metric value is measured before a
  /// critical-level alert is triggered.
  final pulumi.Input<String> times;

  /// Creates a new [GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical].
  /// [comparisonOperator] The comparison operator of the threshold for critical-level alerts.Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  /// [statistics] The statistical aggregation method for critical-level alerts.
  /// [threshold] The threshold for critical-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a
  const GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical({
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

  factory GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplateAlertTemplateEscalationCritical(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
      times: pulumi.Input.fromValue(map['times'] as String),
    );
  }
}

