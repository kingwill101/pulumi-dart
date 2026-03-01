// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'retention_duration.dart';

/// Weekly retention schedule.
class WeeklyRetentionSchedule {
  /// List of days of week for weekly retention policy.
  final List<DayOfWeek>? daysOfTheWeek;
  /// Retention duration of retention Policy.
  final RetentionDuration? retentionDuration;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

  /// Creates a new [WeeklyRetentionSchedule].
  /// [daysOfTheWeek] List of days of week for weekly retention policy.
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionTimes] Retention times of retention policy.
  WeeklyRetentionSchedule({
    this.daysOfTheWeek,
    this.retentionDuration,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfTheWeek': ?daysOfTheWeek == null ? null : pulumi.Input.encodeList<DayOfWeek, String>(daysOfTheWeek!, (value) => value.value),
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory WeeklyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return WeeklyRetentionSchedule(
      daysOfTheWeek: map['daysOfTheWeek'] == null ? null : pulumi.Input.decodeList<DayOfWeek>(map['daysOfTheWeek'], (value) => DayOfWeek.fromValue(value as String)),
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

