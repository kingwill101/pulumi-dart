// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_monthly_schedule.dart';
import 'daily_schedule.dart';
import 'relative_monthly_schedule.dart';
import 'weekly_schedule.dart';

/// One and only one of the schedule types should be specified. Choose either 'daily', 'weekly', 'absoluteMonthly' or 'relativeMonthly' for your maintenance schedule.
class Schedule {
  /// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  final pulumi.Input<AbsoluteMonthlySchedule>? absoluteMonthly;
  /// For schedules like: 'recur every day' or 'recur every 3 days'.
  final pulumi.Input<DailySchedule>? daily;
  /// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  final pulumi.Input<RelativeMonthlySchedule>? relativeMonthly;
  /// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  final pulumi.Input<WeeklySchedule>? weekly;

  /// Creates a new [Schedule].
  /// [absoluteMonthly] For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  /// [daily] For schedules like: 'recur every day' or 'recur every 3 days'.
  /// [relativeMonthly] For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  /// [weekly] For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  const Schedule({
    this.absoluteMonthly,
    this.daily,
    this.relativeMonthly,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteMonthly': ?pulumi.Input.mapOptionalInputValue<AbsoluteMonthlySchedule, Map<String, dynamic>>(absoluteMonthly, (value) => value.toMap()),
      'daily': ?pulumi.Input.mapOptionalInputValue<DailySchedule, Map<String, dynamic>>(daily, (value) => value.toMap()),
      'relativeMonthly': ?pulumi.Input.mapOptionalInputValue<RelativeMonthlySchedule, Map<String, dynamic>>(relativeMonthly, (value) => value.toMap()),
      'weekly': ?pulumi.Input.mapOptionalInputValue<WeeklySchedule, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      absoluteMonthly: (() { final guardedValue = map['absoluteMonthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AbsoluteMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      daily: (() { final guardedValue = map['daily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relativeMonthly: (() { final guardedValue = map['relativeMonthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelativeMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weekly: (() { final guardedValue = map['weekly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
