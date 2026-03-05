// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_schedule_response.dart';

class RecurrenceTriggerResponse {
  /// Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// Recommented format would be "2022-06-01T00:00:01"
  /// If not present, the schedule will run indefinitely
  final pulumi.Input<String>? endTime;
  /// [Required] The frequency to trigger schedule.
  final pulumi.Input<String> frequency;
  /// [Required] Specifies schedule interval in conjunction with frequency
  final pulumi.Input<int> interval;
  /// The recurrence schedule.
  final pulumi.Input<RecurrenceScheduleResponse>? schedule;
  /// Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  final pulumi.Input<String>? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final pulumi.Input<String>? timeZone;
  /// Expected value is 'Recurrence'.
  final pulumi.Input<String> triggerType;

  /// Creates a new [RecurrenceTriggerResponse].
  /// [endTime] Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// [frequency] [Required] The frequency to trigger schedule.
  /// [interval] [Required] Specifies schedule interval in conjunction with frequency
  /// [schedule] The recurrence schedule.
  /// [startTime] Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  /// [timeZone] Specifies time zone in which the schedule runs.
  /// [triggerType] Expected value is 'Recurrence'.
  RecurrenceTriggerResponse({
    this.endTime,
    required this.frequency,
    required this.interval,
    this.schedule,
    this.startTime,
    this.timeZone,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'schedule': ?pulumi.Input.mapOptionalInputValue<RecurrenceScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'triggerType': triggerType,
    };
  }

  factory RecurrenceTriggerResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceTriggerResponse(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrenceScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}

