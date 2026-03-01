// ignore_for_file: unused_element, unnecessary_cast

import 'quota_schedule_schedule_list_condition.dart';

class QuotaScheduleScheduleList {
  /// The value of effective condition. See `condition` below.
  final QuotaScheduleScheduleListCondition? condition;
  /// The name of the quota plan.
  final String plan;
  /// The type of the quota plan. Valid values: daily
  ///
  /// > **NOTE:** Currently, only daily is supported.
  final String type;

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
      'condition': ?condition == null ? null : condition!.toMap(),
      'plan': plan,
      'type': type,
    };
  }

  factory QuotaScheduleScheduleList.fromMap(Map<String, dynamic> map) {
    return QuotaScheduleScheduleList(
      condition: map['condition'] == null ? null : QuotaScheduleScheduleListCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      plan: map['plan'] as String,
      type: map['type'] as String,
    );
  }
}

