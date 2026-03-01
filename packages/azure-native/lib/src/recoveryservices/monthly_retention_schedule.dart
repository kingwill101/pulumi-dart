// ignore_for_file: unused_element, unnecessary_cast

import 'daily_retention_format.dart';
import 'retention_duration.dart';
import 'weekly_retention_format.dart';

/// Monthly retention schedule.
class MonthlyRetentionSchedule {
  /// Retention duration of retention Policy.
  final RetentionDuration? retentionDuration;
  /// Daily retention format for monthly retention policy.
  final DailyRetentionFormat? retentionScheduleDaily;
  /// Retention schedule format type for monthly retention policy.
  final String? retentionScheduleFormatType;
  /// Weekly retention format for monthly retention policy.
  final WeeklyRetentionFormat? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

  /// Creates a new [MonthlyRetentionSchedule].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionScheduleDaily] Daily retention format for monthly retention policy.
  /// [retentionScheduleFormatType] Retention schedule format type for monthly retention policy.
  /// [retentionScheduleWeekly] Weekly retention format for monthly retention policy.
  /// [retentionTimes] Retention times of retention policy.
  MonthlyRetentionSchedule({
    this.retentionDuration,
    this.retentionScheduleDaily,
    this.retentionScheduleFormatType,
    this.retentionScheduleWeekly,
    this.retentionTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionScheduleDaily': ?retentionScheduleDaily == null ? null : retentionScheduleDaily!.toMap(),
      'retentionScheduleFormatType': ?retentionScheduleFormatType,
      'retentionScheduleWeekly': ?retentionScheduleWeekly == null ? null : retentionScheduleWeekly!.toMap(),
      'retentionTimes': ?retentionTimes,
    };
  }

  factory MonthlyRetentionSchedule.fromMap(Map<String, dynamic> map) {
    return MonthlyRetentionSchedule(
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : DailyRetentionFormat.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>()),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : map['retentionScheduleFormatType'] as String,
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : WeeklyRetentionFormat.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

