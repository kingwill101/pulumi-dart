// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_schedule_schedule_list.dart';

/// Input properties used for looking up and filtering QuotaSchedule resources.
class QuotaScheduleState {
  /// The nickname of level-1 compute quota.
  final pulumi.Input<String>? nickname;
  /// schedule list See `schedule_list` below.
  final pulumi.Input<List<QuotaScheduleScheduleList>>? scheduleLists;
  /// Time zone, reference value: UTC +8
  final pulumi.Input<String>? timezone;

  /// Creates a new [QuotaScheduleState].
  /// [nickname] The nickname of level-1 compute quota.
  /// [scheduleLists] schedule list See `schedule_list` below.
  /// [timezone] Time zone, reference value: UTC +8
  QuotaScheduleState({
    this.nickname,
    this.scheduleLists,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickname': ?nickname,
      'scheduleLists': ?pulumi.Input.mapOptionalInputValue<List<QuotaScheduleScheduleList>, List<Map<String, dynamic>>>(scheduleLists, (value) => pulumi.Input.encodeList<QuotaScheduleScheduleList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': ?timezone,
    };
  }

  factory QuotaScheduleState.fromMap(Map<String, dynamic> map) {
    return QuotaScheduleState(
      nickname: (() { final guardedValue = map['nickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleLists: (() { final guardedValue = map['scheduleLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuotaScheduleScheduleList>(guardedValue, (value) => QuotaScheduleScheduleList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

