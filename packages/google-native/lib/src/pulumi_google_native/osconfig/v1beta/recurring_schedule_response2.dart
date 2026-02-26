// ignore_for_file: unused_element, unnecessary_cast

import 'monthly_schedule_response2.dart';
import 'time_of_day_response5.dart';
import 'time_zone_response2.dart';
import 'weekly_schedule_response5.dart';

/// Sets the time for recurring patch deployments.
class RecurringScheduleResponse2 {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final String endTime;

  /// The frequency unit of this recurring schedule.
  final String frequency;

  /// The time the last patch job ran successfully.
  final String lastExecuteTime;

  /// Schedule with monthly executions.
  final MonthlyScheduleResponse2 monthly;

  /// The time the next patch job is scheduled to run.
  final String nextExecuteTime;

  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final String startTime;

  /// Time of the day to run a recurring deployment.
  final TimeOfDayResponse5 timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final TimeZoneResponse2 timeZone;

  /// Schedule with weekly executions.
  final WeeklyScheduleResponse5 weekly;

  RecurringScheduleResponse2({
    required this.endTime,
    required this.frequency,
    required this.lastExecuteTime,
    required this.monthly,
    required this.nextExecuteTime,
    required this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    required this.weekly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['frequency'] = frequency;
    map['lastExecuteTime'] = lastExecuteTime;
    map['monthly'] = monthly.toMap();
    map['nextExecuteTime'] = nextExecuteTime;
    map['startTime'] = startTime;
    map['timeOfDay'] = timeOfDay.toMap();
    map['timeZone'] = timeZone.toMap();
    map['weekly'] = weekly.toMap();
    return map;
  }

  factory RecurringScheduleResponse2.fromMap(Map<String, dynamic> map) {
    return RecurringScheduleResponse2(
      endTime: map['endTime'] as String,
      frequency: map['frequency'] as String,
      lastExecuteTime: map['lastExecuteTime'] as String,
      monthly: MonthlyScheduleResponse2.fromMap(
          (map['monthly'] as Map).cast<String, dynamic>()),
      nextExecuteTime: map['nextExecuteTime'] as String,
      startTime: map['startTime'] as String,
      timeOfDay: TimeOfDayResponse5.fromMap(
          (map['timeOfDay'] as Map).cast<String, dynamic>()),
      timeZone: TimeZoneResponse2.fromMap(
          (map['timeZone'] as Map).cast<String, dynamic>()),
      weekly: WeeklyScheduleResponse5.fromMap(
          (map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}
