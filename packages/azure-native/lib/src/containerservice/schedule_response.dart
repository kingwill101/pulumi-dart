// ignore_for_file: unused_element, unnecessary_cast

import 'absolute_monthly_schedule_response.dart';
import 'daily_schedule_response.dart';
import 'relative_monthly_schedule_response.dart';
import 'weekly_schedule_response.dart';

/// One and only one of the schedule types should be specified. Choose either 'daily', 'weekly', 'absoluteMonthly' or 'relativeMonthly' for your maintenance schedule.
class ScheduleResponse {
  /// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  final AbsoluteMonthlyScheduleResponse? absoluteMonthly;
  /// For schedules like: 'recur every day' or 'recur every 3 days'.
  final DailyScheduleResponse? daily;
  /// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  final RelativeMonthlyScheduleResponse? relativeMonthly;
  /// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  final WeeklyScheduleResponse? weekly;

  /// Creates a new [ScheduleResponse].
  /// [absoluteMonthly] For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  /// [daily] For schedules like: 'recur every day' or 'recur every 3 days'.
  /// [relativeMonthly] For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  /// [weekly] For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  ScheduleResponse({
    this.absoluteMonthly,
    this.daily,
    this.relativeMonthly,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteMonthly': ?absoluteMonthly == null ? null : absoluteMonthly!.toMap(),
      'daily': ?daily == null ? null : daily!.toMap(),
      'relativeMonthly': ?relativeMonthly == null ? null : relativeMonthly!.toMap(),
      'weekly': ?weekly == null ? null : weekly!.toMap(),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      absoluteMonthly: map['absoluteMonthly'] == null ? null : AbsoluteMonthlyScheduleResponse.fromMap((map['absoluteMonthly'] as Map).cast<String, dynamic>()),
      daily: map['daily'] == null ? null : DailyScheduleResponse.fromMap((map['daily'] as Map).cast<String, dynamic>()),
      relativeMonthly: map['relativeMonthly'] == null ? null : RelativeMonthlyScheduleResponse.fromMap((map['relativeMonthly'] as Map).cast<String, dynamic>()),
      weekly: map['weekly'] == null ? null : WeeklyScheduleResponse.fromMap((map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}

