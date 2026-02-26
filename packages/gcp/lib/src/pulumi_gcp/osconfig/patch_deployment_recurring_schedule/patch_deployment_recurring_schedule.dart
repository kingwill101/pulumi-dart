// ignore_for_file: unused_element, unnecessary_cast

import '../patch_deployment_recurring_schedule_monthly/patch_deployment_recurring_schedule_monthly.dart';
import '../patch_deployment_recurring_schedule_time_of_day/patch_deployment_recurring_schedule_time_of_day.dart';
import '../patch_deployment_recurring_schedule_time_zone/patch_deployment_recurring_schedule_time_zone.dart';
import '../patch_deployment_recurring_schedule_weekly/patch_deployment_recurring_schedule_weekly.dart';

class PatchDeploymentRecurringSchedule {
  /// The end time at which a recurring patch deployment schedule is no longer active.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? endTime;

  /// (Output)
  /// The time the last patch job ran successfully.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? lastExecuteTime;

  /// Schedule with monthly executions.
  /// Structure is documented below.
  final PatchDeploymentRecurringScheduleMonthly? monthly;

  /// (Output)
  /// The time the next patch job is scheduled to run.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? nextExecuteTime;

  /// The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? startTime;

  /// Time of the day to run a recurring deployment.
  /// Structure is documented below.
  final PatchDeploymentRecurringScheduleTimeOfDay timeOfDay;

  /// Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are
  /// determined by the chosen time zone.
  /// Structure is documented below.
  final PatchDeploymentRecurringScheduleTimeZone timeZone;

  /// Schedule with weekly executions.
  /// Structure is documented below.
  final PatchDeploymentRecurringScheduleWeekly? weekly;

  PatchDeploymentRecurringSchedule({
    this.endTime,
    this.lastExecuteTime,
    this.monthly,
    this.nextExecuteTime,
    this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final lastExecuteTimeValue = lastExecuteTime;
    if (lastExecuteTimeValue != null) {
      map['lastExecuteTime'] = lastExecuteTimeValue;
    }
    final monthlyValue = monthly;
    if (monthlyValue != null) {
      map['monthly'] = monthlyValue.toMap();
    }
    final nextExecuteTimeValue = nextExecuteTime;
    if (nextExecuteTimeValue != null) {
      map['nextExecuteTime'] = nextExecuteTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    map['timeOfDay'] = timeOfDay.toMap();
    map['timeZone'] = timeZone.toMap();
    final weeklyValue = weekly;
    if (weeklyValue != null) {
      map['weekly'] = weeklyValue.toMap();
    }
    return map;
  }

  factory PatchDeploymentRecurringSchedule.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringSchedule(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      lastExecuteTime: map['lastExecuteTime'] == null
          ? null
          : map['lastExecuteTime'] as String,
      monthly: map['monthly'] == null
          ? null
          : PatchDeploymentRecurringScheduleMonthly.fromMap(
              (map['monthly'] as Map).cast<String, dynamic>()),
      nextExecuteTime: map['nextExecuteTime'] == null
          ? null
          : map['nextExecuteTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeOfDay: PatchDeploymentRecurringScheduleTimeOfDay.fromMap(
          (map['timeOfDay'] as Map).cast<String, dynamic>()),
      timeZone: PatchDeploymentRecurringScheduleTimeZone.fromMap(
          (map['timeZone'] as Map).cast<String, dynamic>()),
      weekly: map['weekly'] == null
          ? null
          : PatchDeploymentRecurringScheduleWeekly.fromMap(
              (map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}
