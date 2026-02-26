// ignore_for_file: unused_element, unnecessary_cast

import 'monthly_schedule2.dart';
import 'recurring_schedule_frequency2.dart';
import 'time_of_day5.dart';
import 'time_zone2.dart';
import 'weekly_schedule5.dart';

/// Sets the time for recurring patch deployments.
class RecurringSchedule2 {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final String? endTime;

  /// The frequency unit of this recurring schedule.
  final RecurringScheduleFrequency2 frequency;

  /// Schedule with monthly executions.
  final MonthlySchedule2 monthly;

  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final String? startTime;

  /// Time of the day to run a recurring deployment.
  final TimeOfDay5 timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final TimeZone2 timeZone;

  /// Schedule with weekly executions.
  final WeeklySchedule5 weekly;

  RecurringSchedule2({
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

  factory RecurringSchedule2.fromMap(Map<String, dynamic> map) {
    return RecurringSchedule2(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency:
          RecurringScheduleFrequency2.fromValue(map['frequency'] as String),
      monthly: MonthlySchedule2.fromMap(
          (map['monthly'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeOfDay:
          TimeOfDay5.fromMap((map['timeOfDay'] as Map).cast<String, dynamic>()),
      timeZone:
          TimeZone2.fromMap((map['timeZone'] as Map).cast<String, dynamic>()),
      weekly: WeeklySchedule5.fromMap(
          (map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}
