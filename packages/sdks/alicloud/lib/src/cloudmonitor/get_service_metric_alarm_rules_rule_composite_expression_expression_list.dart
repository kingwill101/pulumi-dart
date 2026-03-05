// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList {
  /// The comparison operator that is used to compare the metric value with the threshold.
  final pulumi.Input<String> comparisonOperator;
  /// The name of the metric.
  final pulumi.Input<String> metricName;
  /// The aggregation period of the metric.
  final pulumi.Input<int> period;
  /// The statistical methods for Warn-level alerts.
  final pulumi.Input<String> statistics;
  /// The threshold for Warn-level alerts.
  final pulumi.Input<String> threshold;

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
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}

