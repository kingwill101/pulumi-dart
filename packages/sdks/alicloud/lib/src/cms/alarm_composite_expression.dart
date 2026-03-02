// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_composite_expression_expression_list.dart';

class AlarmCompositeExpression {
  /// The relationship between the trigger conditions for multiple metrics. Valid values: `&&`, `||`.
  final pulumi.Input<String>? expressionListJoin;
  /// The trigger conditions that are created in standard mode. See `expression_list` below.
  final pulumi.Input<List<AlarmCompositeExpressionExpressionList>>? expressionLists;
  /// The trigger conditions that are created by using expressions.
  final pulumi.Input<String>? expressionRaw;
  /// The level of the alert. Valid values: `CRITICAL`, `WARN`, `INFO`.
  final pulumi.Input<String>? level;
  /// The number of consecutive triggers.
  final pulumi.Input<int>? times;

  /// Creates a new [AlarmCompositeExpression].
  /// [expressionListJoin] The relationship between the trigger conditions for multiple metrics. Valid values: `&&`, `||`.
  /// [expressionLists] The trigger conditions that are created in standard mode. See `expression_list` below.
  /// [expressionRaw] The trigger conditions that are created by using expressions.
  /// [level] The level of the alert. Valid values: `CRITICAL`, `WARN`, `INFO`.
  /// [times] The number of consecutive triggers.
  AlarmCompositeExpression({
    this.expressionListJoin,
    this.expressionLists,
    this.expressionRaw,
    this.level,
    this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionListJoin': ?expressionListJoin,
      'expressionLists': ?pulumi.Input.mapOptionalInputValue<List<AlarmCompositeExpressionExpressionList>, List<Map<String, dynamic>>>(expressionLists, (value) => pulumi.Input.encodeList<AlarmCompositeExpressionExpressionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expressionRaw': ?expressionRaw,
      'level': ?level,
      'times': ?times,
    };
  }

  factory AlarmCompositeExpression.fromMap(Map<String, dynamic> map) {
    return AlarmCompositeExpression(
      expressionListJoin: map['expressionListJoin'] == null ? null : (map['expressionListJoin']! as String).input(),
      expressionLists: map['expressionLists'] == null ? null : (pulumi.Input.decodeList<AlarmCompositeExpressionExpressionList>(map['expressionLists']!, (value) => AlarmCompositeExpressionExpressionList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expressionRaw: map['expressionRaw'] == null ? null : (map['expressionRaw']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      times: map['times'] == null ? null : (map['times']! as int).input(),
    );
  }
}

