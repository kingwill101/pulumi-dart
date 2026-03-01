// ignore_for_file: unused_element, unnecessary_cast

import 'job_schedule_type.dart';

/// Scheduling properties of a job.
class JobSchedule {
  /// Whether or not the schedule is enabled.
  final bool? enabled;
  /// Schedule end time.
  final String? endTime;
  /// Value of the schedule's recurring interval, if the ScheduleType is recurring. ISO8601 duration format.
  final String? interval;
  /// Schedule start time.
  final String? startTime;
  /// Schedule interval type
  final JobScheduleType? type;

  /// Creates a new [JobSchedule].
  /// [enabled] Whether or not the schedule is enabled.
  /// [endTime] Schedule end time.
  /// [interval] Value of the schedule's recurring interval, if the ScheduleType is recurring. ISO8601 duration format.
  /// [startTime] Schedule start time.
  /// [type] Schedule interval type
  JobSchedule({
    this.enabled,
    this.endTime,
    this.interval,
    this.startTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endTime': ?endTime,
      'interval': ?interval,
      'startTime': ?startTime,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory JobSchedule.fromMap(Map<String, dynamic> map) {
    return JobSchedule(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      type: map['type'] == null ? null : JobScheduleType.fromValue(map['type'] as String),
    );
  }
}

