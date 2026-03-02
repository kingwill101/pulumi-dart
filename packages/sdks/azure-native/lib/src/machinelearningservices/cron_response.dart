// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The workflow trigger cron for ComputeStartStop schedule type.
class CronResponse {
  /// [Required] Specifies cron expression of schedule.
  /// The expression should follow NCronTab format.
  final pulumi.Input<String>? expression;
  /// The start time in yyyy-MM-ddTHH:mm:ss format.
  final pulumi.Input<String>? startTime;
  /// Specifies time zone in which the schedule runs.
  /// TimeZone should follow Windows time zone format. Refer: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/default-time-zones?view=windows-11
  final pulumi.Input<String>? timeZone;

  /// Creates a new [CronResponse].
  /// [expression] [Required] Specifies cron expression of schedule.
  /// [startTime] The start time in yyyy-MM-ddTHH:mm:ss format.
  /// [timeZone] Specifies time zone in which the schedule runs.
  CronResponse({
    this.expression,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory CronResponse.fromMap(Map<String, dynamic> map) {
    return CronResponse(
      expression: map['expression'] == null ? null : (map['expression']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

