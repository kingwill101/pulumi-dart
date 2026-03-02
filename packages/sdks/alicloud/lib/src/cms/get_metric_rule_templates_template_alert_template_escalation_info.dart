// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetricRuleTemplatesTemplateAlertTemplateEscalationInfo {
  /// The comparison operator of the threshold for info-level alerts.Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final pulumi.Input<String> comparisonOperator;
  /// The statistical aggregation method for info-level alerts.
  final pulumi.Input<String> statistics;
  /// The threshold for info-level alerts.
  final pulumi.Input<String> threshold;
  /// The consecutive number of times for which the metric value is measured before an info-level
  /// alert is triggered.
  final pulumi.Input<String> times;

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
      comparisonOperator: (map['comparisonOperator'] as String).input(),
      statistics: (map['statistics'] as String).input(),
      threshold: (map['threshold'] as String).input(),
      times: (map['times'] as String).input(),
    );
  }
}

