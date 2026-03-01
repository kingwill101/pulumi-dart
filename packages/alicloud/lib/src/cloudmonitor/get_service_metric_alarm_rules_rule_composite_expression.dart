// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule_composite_expression_expression_list.dart';

class GetServiceMetricAlarmRulesRuleCompositeExpression {
  /// The relationship between the trigger conditions for multiple metrics.
  final String expressionListJoin;
  /// The trigger conditions that are created in standard mode.
  final List<GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList> expressionLists;
  /// The trigger conditions that are created by using expressions.
  final String expressionRaw;
  /// The alert level.
  final String level;
  /// The number of consecutive triggers.
  final int times;

  /// Creates a new [GetServiceMetricAlarmRulesRuleCompositeExpression].
  /// [expressionListJoin] The relationship between the trigger conditions for multiple metrics.
  /// [expressionLists] The trigger conditions that are created in standard mode.
  /// [expressionRaw] The trigger conditions that are created by using expressions.
  /// [level] The alert level.
  /// [times] The number of consecutive triggers.
  GetServiceMetricAlarmRulesRuleCompositeExpression({
    required this.expressionListJoin,
    required this.expressionLists,
    required this.expressionRaw,
    required this.level,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionListJoin': expressionListJoin,
      'expressionLists': pulumi.Input.encodeList<GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList, Map<String, dynamic>>(expressionLists, (value) => value.toMap()),
      'expressionRaw': expressionRaw,
      'level': level,
      'times': times,
    };
  }

  factory GetServiceMetricAlarmRulesRuleCompositeExpression.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRuleCompositeExpression(
      expressionListJoin: map['expressionListJoin'] as String,
      expressionLists: pulumi.Input.decodeList<GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList>(map['expressionLists'], (value) => GetServiceMetricAlarmRulesRuleCompositeExpressionExpressionList.fromMap((value as Map).cast<String, dynamic>())),
      expressionRaw: map['expressionRaw'] as String,
      level: map['level'] as String,
      times: map['times'] as int,
    );
  }
}

