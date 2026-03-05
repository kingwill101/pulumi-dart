// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_scheduled_task_scheduled_task_args_doc}
/// The set of arguments for ScheduledTask.
/// {@endtemplate}
/// {@macro pulumi_ess_scheduled_task_scheduled_task_args_doc}
class ScheduledTaskArgs {
  /// Description of the scheduled task, which is 2-200 characters (English or Chinese) long.
  final pulumi.Input<String>? description;
  /// The expected number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group. **NOTE:** You must specify the `DesiredCapacity` parameter when you create the scaling group.
  final pulumi.Input<int>? desiredCapacity;
  /// The time period during which a failed scheduled task is retried. Unit: seconds. Valid values: 0 to 1800, Available since v1.240.0. Default value: 600
  final pulumi.Input<int>? launchExpirationTime;
  /// The time at which the scheduled task is triggered. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mmZ format.
  /// The time must be in UTC. You cannot enter a time point later than 90 days from the date of scheduled task creation.
  /// If the `recurrence_type` parameter is specified, the task is executed repeatedly at the time specified by LaunchTime.
  /// Otherwise, the task is only executed once at the date and time specified by LaunchTime.
  final pulumi.Input<String>? launchTime;
  /// The maximum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  final pulumi.Input<int>? maxValue;
  /// The minimum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  final pulumi.Input<int>? minValue;
  /// Specifies the end time after which the scheduled task is no longer repeated. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mm:ssZ format.
  /// The time must be in UTC. You cannot enter a time point later than 365 days from the date of scheduled task creation. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time.
  final pulumi.Input<String>? recurrenceEndTime;
  /// Specifies the recurrence type of the scheduled task. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. Valid values:
  /// - Daily: The scheduled task is executed once every specified number of days.
  /// - Weekly: The scheduled task is executed on each specified day of a week.
  /// - Monthly: The scheduled task is executed on each specified day of a month.
  /// - Cron: (Available in 1.60.0+) The scheduled task is executed based on the specified cron expression.
  final pulumi.Input<String>? recurrenceType;
  /// Specifies how often a scheduled task recurs. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. The valid value depends on `recurrence_type`
  /// - Daily: You can enter one value. Valid values: 1 to 31.
  /// - Weekly: You can enter multiple values and separate them with commas (,). For example, the values 0 to 6 correspond to the days of the week in sequence from Sunday to Saturday.
  /// - Monthly: You can enter two values in A-B format. Valid values of A and B: 1 to 31. The value of B must be greater than or equal to the value of A.
  /// - Cron: You can enter a cron expression which is written in UTC and consists of five fields: minute, hour, day of month (date), month, and day of week. The expression can contain wildcard characters including commas (,), question marks (?), hyphens (-), asterisks (*), number signs (#), forward slashes (/), and the L and W letters.
  final pulumi.Input<String>? recurrenceValue;
  /// The ID of the scaling group where the number of instances is modified when the scheduled task is triggered. After the `ScalingGroupId` parameter is specified, the scaling method of the scheduled task is to specify the number of instances in a scaling group. You must specify at least one of the following parameters: `MinValue`, `MaxValue`, and `DesiredCapacity`. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  final pulumi.Input<String>? scalingGroupId;
  /// The operation to be performed when a scheduled task is triggered. Enter the unique identifier of a scaling rule. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  final pulumi.Input<String>? scheduledAction;
  /// Display name of the scheduled task, which must be 2-40 characters (English or Chinese) long.
  final pulumi.Input<String>? scheduledTaskName;
  /// Specifies whether to start the scheduled task. Default to true.
  final pulumi.Input<bool>? taskEnabled;

  /// Creates a new [ScheduledTaskArgs].
  /// [description] Description of the scheduled task, which is 2-200 characters (English or Chinese) long.
  /// [desiredCapacity] The expected number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group. **NOTE:** You must specify the `DesiredCapacity` parameter when you create the scaling group.
  /// [launchExpirationTime] The time period during which a failed scheduled task is retried. Unit: seconds. Valid values: 0 to 1800, Available since v1.240.0. Default value: 600
  /// [launchTime] The time at which the scheduled task is triggered. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mmZ format.
  /// [maxValue] The maximum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  /// [minValue] The minimum number of instances in a scaling group when the scaling method of the scheduled task is to specify the number of instances in a scaling group.
  /// [recurrenceEndTime] Specifies the end time after which the scheduled task is no longer repeated. Specify the time in the ISO 8601 standard in the YYYY-MM-DDThh:mm:ssZ format.
  /// [recurrenceType] Specifies the recurrence type of the scheduled task. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. Valid values:
  /// [recurrenceValue] Specifies how often a scheduled task recurs. **NOTE:** You must specify `RecurrenceType`, `RecurrenceValue`, and `RecurrenceEndTime` at the same time. The valid value depends on `recurrence_type`
  /// [scalingGroupId] The ID of the scaling group where the number of instances is modified when the scheduled task is triggered. After the `ScalingGroupId` parameter is specified, the scaling method of the scheduled task is to specify the number of instances in a scaling group. You must specify at least one of the following parameters: `MinValue`, `MaxValue`, and `DesiredCapacity`. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  /// [scheduledAction] The operation to be performed when a scheduled task is triggered. Enter the unique identifier of a scaling rule. **NOTE:** You cannot specify `scheduled_action` and `scaling_group_id` at the same time.
  /// [scheduledTaskName] Display name of the scheduled task, which must be 2-40 characters (English or Chinese) long.
  /// [taskEnabled] Specifies whether to start the scheduled task. Default to true.
  ScheduledTaskArgs({
    this.description,
    this.desiredCapacity,
    this.launchExpirationTime,
    this.launchTime,
    this.maxValue,
    this.minValue,
    this.recurrenceEndTime,
    this.recurrenceType,
    this.recurrenceValue,
    this.scalingGroupId,
    this.scheduledAction,
    this.scheduledTaskName,
    this.taskEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desiredCapacity': ?desiredCapacity,
      'launchExpirationTime': ?launchExpirationTime,
      'launchTime': ?launchTime,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'recurrenceEndTime': ?recurrenceEndTime,
      'recurrenceType': ?recurrenceType,
      'recurrenceValue': ?recurrenceValue,
      'scalingGroupId': ?scalingGroupId,
      'scheduledAction': ?scheduledAction,
      'scheduledTaskName': ?scheduledTaskName,
      'taskEnabled': ?taskEnabled,
    };
  }

  factory ScheduledTaskArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledTaskArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredCapacity: (() { final guardedValue = map['desiredCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      launchExpirationTime: (() { final guardedValue = map['launchExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      launchTime: (() { final guardedValue = map['launchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recurrenceEndTime: (() { final guardedValue = map['recurrenceEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: (() { final guardedValue = map['recurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceValue: (() { final guardedValue = map['recurrenceValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledAction: (() { final guardedValue = map['scheduledAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledTaskName: (() { final guardedValue = map['scheduledTaskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskEnabled: (() { final guardedValue = map['taskEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

