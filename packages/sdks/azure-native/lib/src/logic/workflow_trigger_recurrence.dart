// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_schedule.dart';

/// The workflow trigger recurrence.
class WorkflowTriggerRecurrence {
  /// The end time.
  final String? endTime;
  /// The frequency.
  final String? frequency;
  /// The interval.
  final int? interval;
  /// The recurrence schedule.
  final RecurrenceSchedule? schedule;
  /// The start time.
  final String? startTime;
  /// The time zone.
  final String? timeZone;

  /// Creates a new [WorkflowTriggerRecurrence].
  /// [endTime] The end time.
  /// [frequency] The frequency.
  /// [interval] The interval.
  /// [schedule] The recurrence schedule.
  /// [startTime] The start time.
  /// [timeZone] The time zone.
  WorkflowTriggerRecurrence({
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
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory WorkflowTriggerRecurrence.fromMap(Map<String, dynamic> map) {
    return WorkflowTriggerRecurrence(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      schedule: map['schedule'] == null ? null : RecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

