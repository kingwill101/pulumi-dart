// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schedule.
class ScheduleArgs {
  /// The name of the Auto Scaling group.
  final pulumi.Input<String> autoscalingGroupName;

  /// The initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain. Set to `-1` if you don't want to change the desired capacity at the scheduled time. Defaults to `0`.
  final pulumi.Input<int>? desiredCapacity;

  /// The date and time for the recurring schedule to end, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  final pulumi.Input<String>? endTime;

  /// The maximum size of the Auto Scaling group. Set to `-1` if you don't want to change the maximum size at the scheduled time. Defaults to `0`.
  final pulumi.Input<int>? maxSize;

  /// The minimum size of the Auto Scaling group. Set to `-1` if you don't want to change the minimum size at the scheduled time. Defaults to `0`.
  final pulumi.Input<int>? minSize;

  /// The recurring schedule for this action specified using the Unix cron syntax format.
  final pulumi.Input<String>? recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of this scaling action.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> scheduledActionName;

  /// The date and time for the recurring schedule to start, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  final pulumi.Input<String>? startTime;

  /// Specifies the time zone for a cron expression. Valid values are the canonical names of the IANA time zones (such as `Etc/GMT+9` or `Pacific/Tahiti`).
  ///
  /// > **NOTE:** When `start_time` and `end_time` are specified with `recurrence` , they form the boundaries of when the recurring action will start and stop.
  final pulumi.Input<String>? timeZone;

  ScheduleArgs({
    required this.autoscalingGroupName,
    this.desiredCapacity,
    this.endTime,
    this.maxSize,
    this.minSize,
    this.recurrence,
    this.region,
    required this.scheduledActionName,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final desiredCapacityValue = desiredCapacity;
    if (desiredCapacityValue != null) {
      map['desiredCapacity'] = desiredCapacityValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final maxSizeValue = maxSize;
    if (maxSizeValue != null) {
      map['maxSize'] = maxSizeValue;
    }
    final minSizeValue = minSize;
    if (minSizeValue != null) {
      map['minSize'] = minSizeValue;
    }
    final recurrenceValue = recurrence;
    if (recurrenceValue != null) {
      map['recurrence'] = recurrenceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduledActionName'] = scheduledActionName;
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      autoscalingGroupName:
          pulumi.Input.asInput<String>(map['autoscalingGroupName']),
      desiredCapacity:
          pulumi.Input.asOptionalInput<int>(map['desiredCapacity']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      maxSize: pulumi.Input.asOptionalInput<int>(map['maxSize']),
      minSize: pulumi.Input.asOptionalInput<int>(map['minSize']),
      recurrence: pulumi.Input.asOptionalInput<String>(map['recurrence']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduledActionName:
          pulumi.Input.asInput<String>(map['scheduledActionName']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
