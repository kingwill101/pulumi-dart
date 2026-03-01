// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_schedule.dart';

class RecurrenceTrigger {
  /// Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// Recommented format would be "2022-06-01T00:00:01"
  /// If not present, the schedule will run indefinitely
  final String? endTime;
  /// [Required] The frequency to trigger schedule.
  final String frequency;
  /// [Required] Specifies schedule interval in conjunction with frequency
  final int interval;
  /// The recurrence schedule.
  final RecurrenceSchedule? schedule;
  /// Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  final String? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final String? timeZone;
  /// Expected value is 'Recurrence'.
  final String triggerType;

  /// Creates a new [RecurrenceTrigger].
  /// [endTime] Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// [frequency] [Required] The frequency to trigger schedule.
  /// [interval] [Required] Specifies schedule interval in conjunction with frequency
  /// [schedule] The recurrence schedule.
  /// [startTime] Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  /// [timeZone] Specifies time zone in which the schedule runs.
  /// [triggerType] Expected value is 'Recurrence'.
  RecurrenceTrigger({
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
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'triggerType': triggerType,
    };
  }

  factory RecurrenceTrigger.fromMap(Map<String, dynamic> map) {
    return RecurrenceTrigger(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] as String,
      interval: map['interval'] as int,
      schedule: map['schedule'] == null ? null : RecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      triggerType: map['triggerType'] as String,
    );
  }
}

