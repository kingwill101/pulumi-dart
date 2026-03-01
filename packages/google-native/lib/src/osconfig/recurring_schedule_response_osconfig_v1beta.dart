// ignore_for_file: unused_element, unnecessary_cast

import 'monthly_schedule_response_osconfig_v1beta.dart';
import 'time_of_day_response_osconfig_v1beta.dart';
import 'time_zone_response_osconfig_v1beta.dart';
import 'weekly_schedule_response_osconfig_v1beta.dart';

/// Sets the time for recurring patch deployments.
class RecurringScheduleResponseOsconfigV1beta {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final String endTime;

  /// The frequency unit of this recurring schedule.
  final String frequency;

  /// The time the last patch job ran successfully.
  final String lastExecuteTime;

  /// Schedule with monthly executions.
  final MonthlyScheduleResponseOsconfigV1beta monthly;

  /// The time the next patch job is scheduled to run.
  final String nextExecuteTime;

  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final String startTime;

  /// Time of the day to run a recurring deployment.
  final TimeOfDayResponseOsconfigV1beta timeOfDay;

  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final TimeZoneResponseOsconfigV1beta timeZone;

  /// Schedule with weekly executions.
  final WeeklyScheduleResponseOsconfigV1beta weekly;

  /// Creates a new [RecurringScheduleResponseOsconfigV1beta].
  /// [endTime] Optional. The end time at which a recurring patch deployment schedule is no longer active.
  /// [frequency] The frequency unit of this recurring schedule.
  /// [lastExecuteTime] The time the last patch job ran successfully.
  /// [monthly] Schedule with monthly executions.
  /// [nextExecuteTime] The time the next patch job is scheduled to run.
  /// [startTime] Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  /// [timeOfDay] Time of the day to run a recurring deployment.
  /// [timeZone] Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  /// [weekly] Schedule with weekly executions.
  RecurringScheduleResponseOsconfigV1beta({
    required this.endTime,
    required this.frequency,
    required this.lastExecuteTime,
    required this.monthly,
    required this.nextExecuteTime,
    required this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    required this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'frequency': frequency,
      'lastExecuteTime': lastExecuteTime,
      'monthly': monthly.toMap(),
      'nextExecuteTime': nextExecuteTime,
      'startTime': startTime,
      'timeOfDay': timeOfDay.toMap(),
      'timeZone': timeZone.toMap(),
      'weekly': weekly.toMap(),
    };
  }

  factory RecurringScheduleResponseOsconfigV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecurringScheduleResponseOsconfigV1beta(
      endTime: map['endTime'] as String,
      frequency: map['frequency'] as String,
      lastExecuteTime: map['lastExecuteTime'] as String,
      monthly: MonthlyScheduleResponseOsconfigV1beta.fromMap(
        (map['monthly'] as Map).cast<String, dynamic>(),
      ),
      nextExecuteTime: map['nextExecuteTime'] as String,
      startTime: map['startTime'] as String,
      timeOfDay: TimeOfDayResponseOsconfigV1beta.fromMap(
        (map['timeOfDay'] as Map).cast<String, dynamic>(),
      ),
      timeZone: TimeZoneResponseOsconfigV1beta.fromMap(
        (map['timeZone'] as Map).cast<String, dynamic>(),
      ),
      weekly: WeeklyScheduleResponseOsconfigV1beta.fromMap(
        (map['weekly'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
