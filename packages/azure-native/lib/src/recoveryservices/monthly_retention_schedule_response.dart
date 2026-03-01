// ignore_for_file: unused_element, unnecessary_cast

import 'daily_retention_format_response.dart';
import 'retention_duration_response.dart';
import 'weekly_retention_format_response.dart';

/// Monthly retention schedule.
class MonthlyRetentionScheduleResponse {
  /// Retention duration of retention Policy.
  final RetentionDurationResponse? retentionDuration;
  /// Daily retention format for monthly retention policy.
  final DailyRetentionFormatResponse? retentionScheduleDaily;
  /// Retention schedule format type for monthly retention policy.
  final String? retentionScheduleFormatType;
  /// Weekly retention format for monthly retention policy.
  final WeeklyRetentionFormatResponse? retentionScheduleWeekly;
  /// Retention times of retention policy.
  final List<String>? retentionTimes;

  /// Creates a new [MonthlyRetentionScheduleResponse].
  /// [retentionDuration] Retention duration of retention Policy.
  /// [retentionScheduleDaily] Daily retention format for monthly retention policy.
  /// [retentionScheduleFormatType] Retention schedule format type for monthly retention policy.
  /// [retentionScheduleWeekly] Weekly retention format for monthly retention policy.
  /// [retentionTimes] Retention times of retention policy.
  MonthlyRetentionScheduleResponse({
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

  factory MonthlyRetentionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MonthlyRetentionScheduleResponse(
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionScheduleDaily: map['retentionScheduleDaily'] == null ? null : DailyRetentionFormatResponse.fromMap((map['retentionScheduleDaily'] as Map).cast<String, dynamic>()),
      retentionScheduleFormatType: map['retentionScheduleFormatType'] == null ? null : map['retentionScheduleFormatType'] as String,
      retentionScheduleWeekly: map['retentionScheduleWeekly'] == null ? null : WeeklyRetentionFormatResponse.fromMap((map['retentionScheduleWeekly'] as Map).cast<String, dynamic>()),
      retentionTimes: map['retentionTimes'] == null ? null : (map['retentionTimes'] as List).cast<String>(),
    );
  }
}

