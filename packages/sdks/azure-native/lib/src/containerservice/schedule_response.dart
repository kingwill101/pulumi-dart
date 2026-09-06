// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_monthly_schedule_response.dart';
import 'daily_schedule_response.dart';
import 'relative_monthly_schedule_response.dart';
import 'weekly_schedule_response.dart';

/// One and only one of the schedule types should be specified. Choose either 'daily', 'weekly', 'absoluteMonthly' or 'relativeMonthly' for your maintenance schedule.
class ScheduleResponse {
  /// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  final pulumi.Input<AbsoluteMonthlyScheduleResponse?>? absoluteMonthly;
  /// For schedules like: 'recur every day' or 'recur every 3 days'.
  final pulumi.Input<DailyScheduleResponse?>? daily;
  /// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  final pulumi.Input<RelativeMonthlyScheduleResponse?>? relativeMonthly;
  /// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  final pulumi.Input<WeeklyScheduleResponse?>? weekly;

  /// Creates a new [ScheduleResponse].
  /// [absoluteMonthly] For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
  /// [daily] For schedules like: 'recur every day' or 'recur every 3 days'.
  /// [relativeMonthly] For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
  /// [weekly] For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
  const ScheduleResponse({
    this.absoluteMonthly,
    this.daily,
    this.relativeMonthly,
    this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteMonthly': ?pulumi.Input.mapOptionalInputValue<AbsoluteMonthlyScheduleResponse, Map<String, dynamic>>(absoluteMonthly, (value) => value.toMap()),
      'daily': ?pulumi.Input.mapOptionalInputValue<DailyScheduleResponse, Map<String, dynamic>>(daily, (value) => value.toMap()),
      'relativeMonthly': ?pulumi.Input.mapOptionalInputValue<RelativeMonthlyScheduleResponse, Map<String, dynamic>>(relativeMonthly, (value) => value.toMap()),
      'weekly': ?pulumi.Input.mapOptionalInputValue<WeeklyScheduleResponse, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      absoluteMonthly: (() { final guardedValue = map['absoluteMonthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AbsoluteMonthlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      daily: (() { final guardedValue = map['daily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relativeMonthly: (() { final guardedValue = map['relativeMonthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelativeMonthlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weekly: (() { final guardedValue = map['weekly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
