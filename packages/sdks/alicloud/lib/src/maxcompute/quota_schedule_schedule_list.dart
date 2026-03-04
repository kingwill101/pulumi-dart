// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_schedule_schedule_list_condition.dart';

class QuotaScheduleScheduleList {
  /// The value of effective condition. See `condition` below.
  final pulumi.Input<QuotaScheduleScheduleListCondition>? condition;

  /// The name of the quota plan.
  final pulumi.Input<String> plan;

  /// The type of the quota plan. Valid values: daily
  ///
  /// &gt; **NOTE:** Currently, only daily is supported.
  final pulumi.Input<String> type;

  /// Creates a new [QuotaScheduleScheduleList].
  /// [condition] The value of effective condition. See `condition` below.
  /// [plan] The name of the quota plan.
  /// [type] The type of the quota plan. Valid values: daily
  QuotaScheduleScheduleList({
    this.condition,
    required this.plan,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            QuotaScheduleScheduleListCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'plan': plan,
      'type': type,
    };
  }

  factory QuotaScheduleScheduleList.fromMap(Map<String, dynamic> map) {
    return QuotaScheduleScheduleList(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QuotaScheduleScheduleListCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      plan: pulumi.Input.fromValue(map['plan'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
