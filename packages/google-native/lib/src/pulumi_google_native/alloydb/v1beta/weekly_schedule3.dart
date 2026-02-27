// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_type_time_of_day3.dart';
import 'weekly_schedule_days_of_week_item3.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklySchedule3 {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final List<WeeklyScheduleDaysOfWeekItem3>? daysOfWeek;

  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final List<GoogleTypeTimeOfDay3>? startTimes;

  WeeklySchedule3({
    this.daysOfWeek,
    this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeekValue = daysOfWeek;
    if (daysOfWeekValue != null) {
      map['daysOfWeek'] =
          Input.encodeList<WeeklyScheduleDaysOfWeekItem3, String>(
              daysOfWeekValue, (value) => value.value);
    }
    final startTimesValue = startTimes;
    if (startTimesValue != null) {
      map['startTimes'] =
          Input.encodeList<GoogleTypeTimeOfDay3, Map<String, dynamic>>(
              startTimesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WeeklySchedule3.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule3(
      daysOfWeek: map['daysOfWeek'] == null
          ? null
          : Input.decodeList<WeeklyScheduleDaysOfWeekItem3>(
              map['daysOfWeek'],
              (value) =>
                  WeeklyScheduleDaysOfWeekItem3.fromValue(value as String)),
      startTimes: map['startTimes'] == null
          ? null
          : Input.decodeList<GoogleTypeTimeOfDay3>(
              map['startTimes'],
              (value) => GoogleTypeTimeOfDay3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
