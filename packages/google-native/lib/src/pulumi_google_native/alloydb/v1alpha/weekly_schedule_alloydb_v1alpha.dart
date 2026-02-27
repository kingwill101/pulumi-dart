// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_time_of_day_alloydb_v1alpha.dart';
import 'weekly_schedule_days_of_week_item_alloydb_v1alpha.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklyScheduleAlloydbV1alpha {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final List<WeeklyScheduleDaysOfWeekItemAlloydbV1alpha>? daysOfWeek;

  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final List<GoogleTypeTimeOfDayAlloydbV1alpha>? startTimes;

  WeeklyScheduleAlloydbV1alpha({
    this.daysOfWeek,
    this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeekValue = daysOfWeek;
    if (daysOfWeekValue != null) {
      map['daysOfWeek'] = pulumi.Input.encodeList<
          WeeklyScheduleDaysOfWeekItemAlloydbV1alpha,
          String>(daysOfWeekValue, (value) => value.value);
    }
    final startTimesValue = startTimes;
    if (startTimesValue != null) {
      map['startTimes'] = pulumi.Input.encodeList<
          GoogleTypeTimeOfDayAlloydbV1alpha,
          Map<String, dynamic>>(startTimesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WeeklyScheduleAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleAlloydbV1alpha(
      daysOfWeek: map['daysOfWeek'] == null
          ? null
          : pulumi.Input.decodeList<WeeklyScheduleDaysOfWeekItemAlloydbV1alpha>(
              map['daysOfWeek'],
              (value) => WeeklyScheduleDaysOfWeekItemAlloydbV1alpha.fromValue(
                  value as String)),
      startTimes: map['startTimes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleTypeTimeOfDayAlloydbV1alpha>(
              map['startTimes'],
              (value) => GoogleTypeTimeOfDayAlloydbV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
