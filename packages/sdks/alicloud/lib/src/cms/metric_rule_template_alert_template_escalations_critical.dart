// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricRuleTemplateAlertTemplateEscalationsCritical {
  /// The comparison operator of the threshold for warn-level alerts. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final pulumi.Input<String>? comparisonOperator;
  /// The statistical aggregation method for warn-level alerts.
  final pulumi.Input<String>? statistics;
  /// The threshold for warn-level alerts.
  final pulumi.Input<String>? threshold;
  /// The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  final pulumi.Input<String>? times;

  /// Creates a new [MetricRuleTemplateAlertTemplateEscalationsCritical].
  /// [comparisonOperator] The comparison operator of the threshold for warn-level alerts. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  /// [statistics] The statistical aggregation method for warn-level alerts.
  /// [threshold] The threshold for warn-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  MetricRuleTemplateAlertTemplateEscalationsCritical({
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

  factory MetricRuleTemplateAlertTemplateEscalationsCritical.fromMap(Map<String, dynamic> map) {
    return MetricRuleTemplateAlertTemplateEscalationsCritical(
      comparisonOperator: map['comparisonOperator'] == null ? null : (map['comparisonOperator']! as String).input(),
      statistics: map['statistics'] == null ? null : (map['statistics']! as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as String).input(),
      times: map['times'] == null ? null : (map['times']! as String).input(),
    );
  }
}

