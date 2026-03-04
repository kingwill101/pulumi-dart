// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMetricAlarmRulesRuleEscalationsWarn {
  /// The comparison operator that is used to compare the metric value with the threshold.
  final pulumi.Input<String> comparisonOperator;

  /// The additional conditions for triggering Warn-level alerts.
  final pulumi.Input<String> preCondition;

  /// The statistical methods for Warn-level alerts.
  final pulumi.Input<String> statistics;

  /// The threshold for Warn-level alerts.
  final pulumi.Input<String> threshold;

  /// The number of consecutive triggers.
  final pulumi.Input<int> times;

  /// Creates a new [GetServiceMetricAlarmRulesRuleEscalationsWarn].
  /// [comparisonOperator] The comparison operator that is used to compare the metric value with the threshold.
  /// [preCondition] The additional conditions for triggering Warn-level alerts.
  /// [statistics] The statistical methods for Warn-level alerts.
  /// [threshold] The threshold for Warn-level alerts.
  /// [times] The number of consecutive triggers.
  GetServiceMetricAlarmRulesRuleEscalationsWarn({
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

  factory GetServiceMetricAlarmRulesRuleEscalationsWarn.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceMetricAlarmRulesRuleEscalationsWarn(
      comparisonOperator: pulumi.Input.fromValue(
        map['comparisonOperator'] as String,
      ),
      preCondition: pulumi.Input.fromValue(map['preCondition'] as String),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
      times: pulumi.Input.fromValue(map['times'] as int),
    );
  }
}
