// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// Weekly schedule.
class WeeklySchedule {
  /// Schedule run days.
  final List<DayOfWeek>? scheduleRunDays;
  /// List of times of day this schedule has to be run.
  final List<String>? scheduleRunTimes;

  /// Creates a new [WeeklySchedule].
  /// [scheduleRunDays] Schedule run days.
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  WeeklySchedule({
    this.scheduleRunDays,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunDays': ?scheduleRunDays == null ? null : pulumi.Input.encodeList<DayOfWeek, String>(scheduleRunDays!, (value) => value.value),
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      scheduleRunDays: map['scheduleRunDays'] == null ? null : pulumi.Input.decodeList<DayOfWeek>(map['scheduleRunDays'], (value) => DayOfWeek.fromValue(value as String)),
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : (map['scheduleRunTimes'] as List).cast<String>(),
    );
  }
}

