// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_autoscaling_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_schedule_schedule_args_doc}
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
  /// &gt; **NOTE:** When `startTime` and `endTime` are specified with `recurrence` , they form the boundaries of when the recurring action will start and stop.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ScheduleArgs].
  /// [autoscalingGroupName] The name of the Auto Scaling group.
  /// [desiredCapacity] The initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain. Set to `-1` if you don't want to change the desired capacity at the scheduled time. Defaults to `0`.
  /// [endTime] The date and time for the recurring schedule to end, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  /// [maxSize] The maximum size of the Auto Scaling group. Set to `-1` if you don't want to change the maximum size at the scheduled time. Defaults to `0`.
  /// [minSize] The minimum size of the Auto Scaling group. Set to `-1` if you don't want to change the minimum size at the scheduled time. Defaults to `0`.
  /// [recurrence] The recurring schedule for this action specified using the Unix cron syntax format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduledActionName] The name of this scaling action.
  /// [startTime] The date and time for the recurring schedule to start, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  /// [timeZone] Specifies the time zone for a cron expression. Valid values are the canonical names of the IANA time zones (such as `Etc/GMT+9` or `Pacific/Tahiti`).
  const ScheduleArgs({
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
    return <String, dynamic>{
      'autoscalingGroupName': autoscalingGroupName,
      'desiredCapacity': ?desiredCapacity,
      'endTime': ?endTime,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'recurrence': ?recurrence,
      'region': ?region,
      'scheduledActionName': scheduledActionName,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      autoscalingGroupName: pulumi.Input.fromValue(map['autoscalingGroupName'] as String),
      desiredCapacity: (() { final guardedValue = map['desiredCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledActionName: pulumi.Input.fromValue(map['scheduledActionName'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
