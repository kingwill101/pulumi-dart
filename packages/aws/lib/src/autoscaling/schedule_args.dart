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
  /// > **NOTE:** When `start_time` and `end_time` are specified with `recurrence` , they form the boundaries of when the recurring action will start and stop.
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
  ScheduleArgs({
    required String autoscalingGroupName,
    int? desiredCapacity,
    String? endTime,
    int? maxSize,
    int? minSize,
    String? recurrence,
    String? region,
    required String scheduledActionName,
    String? startTime,
    String? timeZone,
  }) : autoscalingGroupName = pulumi.Input.asInput<String>(
         autoscalingGroupName,
       ),
       desiredCapacity = pulumi.Input.asOptionalInput<int>(desiredCapacity),
       endTime = pulumi.Input.asOptionalInput<String>(endTime),
       maxSize = pulumi.Input.asOptionalInput<int>(maxSize),
       minSize = pulumi.Input.asOptionalInput<int>(minSize),
       recurrence = pulumi.Input.asOptionalInput<String>(recurrence),
       region = pulumi.Input.asOptionalInput<String>(region),
       scheduledActionName = pulumi.Input.asInput<String>(scheduledActionName),
       startTime = pulumi.Input.asOptionalInput<String>(startTime),
       timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      autoscalingGroupName: map['autoscalingGroupName'] as String,
      desiredCapacity: map['desiredCapacity'] == null
          ? null
          : map['desiredCapacity'] as int,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maxSize: map['maxSize'] == null ? null : map['maxSize'] as int,
      minSize: map['minSize'] == null ? null : map['minSize'] as int,
      recurrence: map['recurrence'] == null
          ? null
          : map['recurrence'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scheduledActionName: map['scheduledActionName'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
