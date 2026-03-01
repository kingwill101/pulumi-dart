// ignore_for_file: unused_element, unnecessary_cast

import 'absolute_monthly_schedule.dart';
import 'daily_schedule.dart';
import 'relative_monthly_schedule.dart';
import 'weekly_schedule.dart';

/// One and only one of the schedule types should be specified. Choose either 'daily', 'weekly', 'absoluteMonthly' or 'relativeMonthly' for your maintenance schedule.
class Schedule {
  /// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  final AbsoluteMonthlySchedule? absoluteMonthly;
  /// For schedules like: 'recur every day' or 'recur every 3 days'.
  final DailySchedule? daily;
  /// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  final RelativeMonthlySchedule? relativeMonthly;
  /// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  final WeeklySchedule? weekly;

  /// Creates a new [Schedule].
  /// [absoluteMonthly] For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  /// [daily] For schedules like: 'recur every day' or 'recur every 3 days'.
  /// [relativeMonthly] For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  /// [weekly] For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  Schedule({
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

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      absoluteMonthly: map['absoluteMonthly'] == null ? null : AbsoluteMonthlySchedule.fromMap((map['absoluteMonthly'] as Map).cast<String, dynamic>()),
      daily: map['daily'] == null ? null : DailySchedule.fromMap((map['daily'] as Map).cast<String, dynamic>()),
      relativeMonthly: map['relativeMonthly'] == null ? null : RelativeMonthlySchedule.fromMap((map['relativeMonthly'] as Map).cast<String, dynamic>()),
      weekly: map['weekly'] == null ? null : WeeklySchedule.fromMap((map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}

