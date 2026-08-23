// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CronTriggerResponse {
  /// Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// Recommented format would be "2022-06-01T00:00:01"
  /// If not present, the schedule will run indefinitely
  final pulumi.Input<String>? endTime;
  /// [Required] Specifies cron expression of schedule.
  /// The expression should follow NCronTab format.
  final pulumi.Input<String> expression;
  /// Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  final pulumi.Input<String>? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final pulumi.Input<String>? timeZone;
  /// Expected value is 'Cron'.
  final pulumi.Input<String> triggerType;

  /// Creates a new [CronTriggerResponse].
  /// [endTime] Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// [expression] [Required] Specifies cron expression of schedule.
  /// [startTime] Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  /// [timeZone] Specifies time zone in which the schedule runs.
  /// [triggerType] Expected value is 'Cron'.
  const CronTriggerResponse({
    this.endTime,
    required this.expression,
    this.startTime,
    this.timeZone,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'expression': expression,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'triggerType': triggerType,
    };
  }

  factory CronTriggerResponse.fromMap(Map<String, dynamic> map) {
    return CronTriggerResponse(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}
