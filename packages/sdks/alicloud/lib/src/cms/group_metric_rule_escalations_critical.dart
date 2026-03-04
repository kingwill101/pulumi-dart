// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMetricRuleEscalationsCritical {
  /// The comparison operator of the threshold for warn-level alerts.
  final pulumi.Input<String>? comparisonOperator;

  /// The statistical aggregation method for warn-level alerts.
  final pulumi.Input<String>? statistics;

  /// The threshold for warn-level alerts.
  final pulumi.Input<String>? threshold;

  /// The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  final pulumi.Input<int>? times;

  /// Creates a new [GroupMetricRuleEscalationsCritical].
  /// [comparisonOperator] The comparison operator of the threshold for warn-level alerts.
  /// [statistics] The statistical aggregation method for warn-level alerts.
  /// [threshold] The threshold for warn-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  GroupMetricRuleEscalationsCritical({
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

  factory GroupMetricRuleEscalationsCritical.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleEscalationsCritical(
      comparisonOperator: (() {
        final guardedValue = map['comparisonOperator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statistics: (() {
        final guardedValue = map['statistics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      times: (() {
        final guardedValue = map['times'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
