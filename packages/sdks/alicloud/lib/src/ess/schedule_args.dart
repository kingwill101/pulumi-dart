// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_ess_schedule_schedule_args_doc}
class ScheduleArgs {
  final pulumi.Input<String>? description;
  final pulumi.Input<int>? desiredCapacity;
  final pulumi.Input<int>? launchExpirationTime;
  final pulumi.Input<String>? launchTime;
  final pulumi.Input<int>? maxValue;
  final pulumi.Input<int>? minValue;
  final pulumi.Input<String>? recurrenceEndTime;
  final pulumi.Input<String>? recurrenceType;
  final pulumi.Input<String>? recurrenceValue;
  final pulumi.Input<String>? scalingGroupId;
  final pulumi.Input<String>? scheduledAction;
  final pulumi.Input<String>? scheduledTaskName;
  final pulumi.Input<bool>? taskEnabled;

  /// Creates a new [ScheduleArgs].
  /// [description] Optional.
  /// [desiredCapacity] Optional.
  /// [launchExpirationTime] Optional.
  /// [launchTime] Optional.
  /// [maxValue] Optional.
  /// [minValue] Optional.
  /// [recurrenceEndTime] Optional.
  /// [recurrenceType] Optional.
  /// [recurrenceValue] Optional.
  /// [scalingGroupId] Optional.
  /// [scheduledAction] Optional.
  /// [scheduledTaskName] Optional.
  /// [taskEnabled] Optional.
  ScheduleArgs({
    pulumi.Output<String>? description,
    pulumi.Output<int>? desiredCapacity,
    pulumi.Output<int>? launchExpirationTime,
    pulumi.Output<String>? launchTime,
    pulumi.Output<int>? maxValue,
    pulumi.Output<int>? minValue,
    pulumi.Output<String>? recurrenceEndTime,
    pulumi.Output<String>? recurrenceType,
    pulumi.Output<String>? recurrenceValue,
    pulumi.Output<String>? scalingGroupId,
    pulumi.Output<String>? scheduledAction,
    pulumi.Output<String>? scheduledTaskName,
    pulumi.Output<bool>? taskEnabled,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredCapacity = pulumi.Input.asOptionalInput<int>(desiredCapacity),
      launchExpirationTime = pulumi.Input.asOptionalInput<int>(launchExpirationTime),
      launchTime = pulumi.Input.asOptionalInput<String>(launchTime),
      maxValue = pulumi.Input.asOptionalInput<int>(maxValue),
      minValue = pulumi.Input.asOptionalInput<int>(minValue),
      recurrenceEndTime = pulumi.Input.asOptionalInput<String>(recurrenceEndTime),
      recurrenceType = pulumi.Input.asOptionalInput<String>(recurrenceType),
      recurrenceValue = pulumi.Input.asOptionalInput<String>(recurrenceValue),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId),
      scheduledAction = pulumi.Input.asOptionalInput<String>(scheduledAction),
      scheduledTaskName = pulumi.Input.asOptionalInput<String>(scheduledTaskName),
      taskEnabled = pulumi.Input.asOptionalInput<bool>(taskEnabled);

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

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredCapacity: map['desiredCapacity'] == null ? null : pulumi.Output.create<int>(map['desiredCapacity'] as int),
      launchExpirationTime: map['launchExpirationTime'] == null ? null : pulumi.Output.create<int>(map['launchExpirationTime'] as int),
      launchTime: map['launchTime'] == null ? null : pulumi.Output.create<String>(map['launchTime'] as String),
      maxValue: map['maxValue'] == null ? null : pulumi.Output.create<int>(map['maxValue'] as int),
      minValue: map['minValue'] == null ? null : pulumi.Output.create<int>(map['minValue'] as int),
      recurrenceEndTime: map['recurrenceEndTime'] == null ? null : pulumi.Output.create<String>(map['recurrenceEndTime'] as String),
      recurrenceType: map['recurrenceType'] == null ? null : pulumi.Output.create<String>(map['recurrenceType'] as String),
      recurrenceValue: map['recurrenceValue'] == null ? null : pulumi.Output.create<String>(map['recurrenceValue'] as String),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
      scheduledAction: map['scheduledAction'] == null ? null : pulumi.Output.create<String>(map['scheduledAction'] as String),
      scheduledTaskName: map['scheduledTaskName'] == null ? null : pulumi.Output.create<String>(map['scheduledTaskName'] as String),
      taskEnabled: map['taskEnabled'] == null ? null : pulumi.Output.create<bool>(map['taskEnabled'] as bool),
    );
  }
}

