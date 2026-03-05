// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMetricRulesRuleEscalationWarn {
  /// The comparison operator of the threshold for warn-level alerts.
  final pulumi.Input<String> comparisonOperator;
  /// The statistical aggregation method for warn-level alerts.
  final pulumi.Input<String> statistics;
  /// The threshold for warn-level alerts.
  final pulumi.Input<String> threshold;
  /// The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  final pulumi.Input<int> times;

  /// Creates a new [GetGroupMetricRulesRuleEscalationWarn].
  /// [comparisonOperator] The comparison operator of the threshold for warn-level alerts.
  /// [statistics] The statistical aggregation method for warn-level alerts.
  /// [threshold] The threshold for warn-level alerts.
  /// [times] The consecutive number of times for which the metric value is measured before a warn-level alert is triggered.
  GetGroupMetricRulesRuleEscalationWarn({
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

  factory GetGroupMetricRulesRuleEscalationWarn.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesRuleEscalationWarn(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
      times: pulumi.Input.fromValue(map['times'] as int),
    );
  }
}

