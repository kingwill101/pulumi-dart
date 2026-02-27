// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_type_time_of_day2.dart';
import 'weekly_schedule_days_of_week_item2.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklySchedule2 {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final List<WeeklyScheduleDaysOfWeekItem2>? daysOfWeek;

  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final List<GoogleTypeTimeOfDay2>? startTimes;

  WeeklySchedule2({
    this.daysOfWeek,
    this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeekValue = daysOfWeek;
    if (daysOfWeekValue != null) {
      map['daysOfWeek'] =
          Input.encodeList<WeeklyScheduleDaysOfWeekItem2, String>(
              daysOfWeekValue, (value) => value.value);
    }
    final startTimesValue = startTimes;
    if (startTimesValue != null) {
      map['startTimes'] =
          Input.encodeList<GoogleTypeTimeOfDay2, Map<String, dynamic>>(
              startTimesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WeeklySchedule2.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule2(
      daysOfWeek: map['daysOfWeek'] == null
          ? null
          : Input.decodeList<WeeklyScheduleDaysOfWeekItem2>(
              map['daysOfWeek'],
              (value) =>
                  WeeklyScheduleDaysOfWeekItem2.fromValue(value as String)),
      startTimes: map['startTimes'] == null
          ? null
          : Input.decodeList<GoogleTypeTimeOfDay2>(
              map['startTimes'],
              (value) => GoogleTypeTimeOfDay2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
