// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_schedule_schedule_list.dart';

/// {@template pulumi_maxcompute_quota_schedule_quota_schedule_args_doc}
/// The set of arguments for QuotaSchedule.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_quota_schedule_quota_schedule_args_doc}
class QuotaScheduleArgs {
  /// The nickname of level-1 compute quota.
  final pulumi.Input<String> nickname;
  /// schedule list See `schedule_list` below.
  final pulumi.Input<List<QuotaScheduleScheduleList>>? scheduleLists;
  /// Time zone, reference value: UTC +8
  final pulumi.Input<String> timezone;

  /// Creates a new [QuotaScheduleArgs].
  /// [nickname] The nickname of level-1 compute quota.
  /// [scheduleLists] schedule list See `schedule_list` below.
  /// [timezone] Time zone, reference value: UTC +8
  QuotaScheduleArgs({
    required pulumi.Output<String> nickname,
    pulumi.Output<List<QuotaScheduleScheduleList>>? scheduleLists,
    required pulumi.Output<String> timezone,
  }) :
      nickname = pulumi.Input.asInput<String>(nickname),
      scheduleLists = pulumi.Input.asOptionalInput<List<QuotaScheduleScheduleList>>(scheduleLists),
      timezone = pulumi.Input.asInput<String>(timezone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickname': nickname,
      'scheduleLists': ?pulumi.Input.mapOptionalInputValue<List<QuotaScheduleScheduleList>, List<Map<String, dynamic>>>(scheduleLists, (value) => pulumi.Input.encodeList<QuotaScheduleScheduleList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': timezone,
    };
  }

  factory QuotaScheduleArgs.fromMap(Map<String, dynamic> map) {
    return QuotaScheduleArgs(
      nickname: pulumi.Output.create<String>(map['nickname'] as String),
      scheduleLists: map['scheduleLists'] == null ? null : pulumi.Output.create<List<QuotaScheduleScheduleList>>(pulumi.Input.decodeList<QuotaScheduleScheduleList>(map['scheduleLists'], (value) => QuotaScheduleScheduleList.fromMap((value as Map).cast<String, dynamic>()))),
      timezone: pulumi.Output.create<String>(map['timezone'] as String),
    );
  }
}

