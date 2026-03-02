// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_schedule_response.dart';

/// The workflow trigger recurrence.
class WorkflowTriggerRecurrenceResponse {
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

  /// Creates a new [WorkflowTriggerRecurrenceResponse].
  /// [endTime] The end time.
  /// [frequency] The frequency.
  /// [interval] The interval.
  /// [schedule] The recurrence schedule.
  /// [startTime] The start time.
  /// [timeZone] The time zone.
  WorkflowTriggerRecurrenceResponse({
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
      'schedule': ?pulumi.Input.mapOptionalInputValue<RecurrenceScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory WorkflowTriggerRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowTriggerRecurrenceResponse(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      schedule: map['schedule'] == null ? null : (RecurrenceScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

