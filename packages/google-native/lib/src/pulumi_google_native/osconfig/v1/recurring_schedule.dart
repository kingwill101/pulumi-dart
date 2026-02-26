// ignore_for_file: unused_element, unnecessary_cast

import 'monthly_schedule.dart';
import 'recurring_schedule_frequency.dart';
import 'time_of_day4.dart';
import 'time_zone.dart';
import 'weekly_schedule4.dart';

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final String? endTime;

  /// The frequency unit of this recurring schedule.
  final RecurringScheduleFrequency frequency;

  /// Schedule with monthly executions.
  final MonthlySchedule monthly;

  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final String? startTime;

  /// Time of the day to run a recurring deployment.
  final TimeOfDay4 timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final TimeZone timeZone;

  /// Schedule with weekly executions.
  final WeeklySchedule4 weekly;

  RecurringSchedule({
    this.endTime,
    required this.frequency,
    required this.monthly,
    this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    required this.weekly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['frequency'] = frequency.value;
    map['monthly'] = monthly.toMap();
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    map['timeOfDay'] = timeOfDay.toMap();
    map['timeZone'] = timeZone.toMap();
    map['weekly'] = weekly.toMap();
    return map;
  }

  factory RecurringSchedule.fromMap(Map<String, dynamic> map) {
    return RecurringSchedule(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency:
          RecurringScheduleFrequency.fromValue(map['frequency'] as String),
      monthly: MonthlySchedule.fromMap(
          (map['monthly'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeOfDay:
          TimeOfDay4.fromMap((map['timeOfDay'] as Map).cast<String, dynamic>()),
      timeZone:
          TimeZone.fromMap((map['timeZone'] as Map).cast<String, dynamic>()),
      weekly: WeeklySchedule4.fromMap(
          (map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}
