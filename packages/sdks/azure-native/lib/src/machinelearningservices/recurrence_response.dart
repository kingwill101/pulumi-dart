// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_recurrence_schedule_response.dart';

/// The workflow trigger recurrence for ComputeStartStop schedule type.
class RecurrenceResponse {
  /// [Required] The frequency to trigger schedule.
  final pulumi.Input<String>? frequency;
  /// [Required] Specifies schedule interval in conjunction with frequency
  final pulumi.Input<int>? interval;
  /// [Required] The recurrence schedule.
  final pulumi.Input<ComputeRecurrenceScheduleResponse>? schedule;
  /// The start time in yyyy-MM-ddTHH:mm:ss format.
  final pulumi.Input<String>? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final pulumi.Input<String>? timeZone;

  /// Creates a new [RecurrenceResponse].
  /// [frequency] [Required] The frequency to trigger schedule.
  /// [interval] [Required] Specifies schedule interval in conjunction with frequency
  /// [schedule] [Required] The recurrence schedule.
  /// [startTime] The start time in yyyy-MM-ddTHH:mm:ss format.
  /// [timeZone] Specifies time zone in which the schedule runs.
  RecurrenceResponse({
    this.frequency,
    this.interval,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ComputeRecurrenceScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory RecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceResponse(
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      schedule: map['schedule'] == null ? null : (ComputeRecurrenceScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

