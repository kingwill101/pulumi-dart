// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_recurrence_schedule.dart';

/// The workflow trigger recurrence for ComputeStartStop schedule type.
class Recurrence {
  /// [Required] The frequency to trigger schedule.
  final pulumi.Input<dynamic>? frequency;
  /// [Required] Specifies schedule interval in conjunction with frequency
  final pulumi.Input<int?>? interval;
  /// [Required] The recurrence schedule.
  final pulumi.Input<ComputeRecurrenceSchedule?>? schedule;
  /// The start time in yyyy-MM-ddTHH:mm:ss format.
  final pulumi.Input<String?>? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [Recurrence].
  /// [frequency] [Required] The frequency to trigger schedule.
  /// [interval] [Required] Specifies schedule interval in conjunction with frequency
  /// [schedule] [Required] The recurrence schedule.
  /// [startTime] The start time in yyyy-MM-ddTHH:mm:ss format.
  /// [timeZone] Specifies time zone in which the schedule runs.
  Recurrence({
    this.frequency,
    this.interval,
    this.schedule,
    this.startTime,
    pulumi.Input<String?>? timeZone,
  }) : timeZone = timeZone ?? pulumi.Input.fromValue('UTC');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ComputeRecurrenceSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory Recurrence.fromMap(Map<String, dynamic> map) {
    return Recurrence(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeRecurrenceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
