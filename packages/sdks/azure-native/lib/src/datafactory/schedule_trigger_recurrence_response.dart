// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_schedule_response.dart';

/// The workflow trigger recurrence.
class ScheduleTriggerRecurrenceResponse {
  /// The end time.
  final pulumi.Input<String>? endTime;

  /// The frequency.
  final pulumi.Input<String>? frequency;

  /// The interval.
  final pulumi.Input<int>? interval;

  /// The recurrence schedule.
  final pulumi.Input<RecurrenceScheduleResponse>? schedule;

  /// The start time.
  final pulumi.Input<String>? startTime;

  /// The time zone.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ScheduleTriggerRecurrenceResponse].
  /// [endTime] The end time.
  /// [frequency] The frequency.
  /// [interval] The interval.
  /// [schedule] The recurrence schedule.
  /// [startTime] The start time.
  /// [timeZone] The time zone.
  ScheduleTriggerRecurrenceResponse({
    this.endTime,
    this.frequency,
    this.interval,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'frequency': ?frequency,
      'interval': ?interval,
      'schedule':
          ?pulumi.Input.mapOptionalInputValue<
            RecurrenceScheduleResponse,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory ScheduleTriggerRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleTriggerRecurrenceResponse(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecurrenceScheduleResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
