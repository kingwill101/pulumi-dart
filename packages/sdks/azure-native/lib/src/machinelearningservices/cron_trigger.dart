// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CronTrigger {
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

  /// Creates a new [CronTrigger].
  /// [endTime] Specifies end time of schedule in ISO 8601, but without a UTC offset. Refer https://en.wikipedia.org/wiki/ISO_8601.
  /// [expression] [Required] Specifies cron expression of schedule.
  /// [startTime] Specifies start time of schedule in ISO 8601 format, but without a UTC offset.
  /// [timeZone] Specifies time zone in which the schedule runs.
  /// [triggerType] Expected value is 'Cron'.
  CronTrigger({
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

  factory CronTrigger.fromMap(Map<String, dynamic> map) {
    return CronTrigger(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      expression: (map['expression'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      triggerType: (map['triggerType'] as String).input(),
    );
  }
}

