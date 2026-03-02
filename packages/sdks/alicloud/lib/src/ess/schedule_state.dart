// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
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

  /// Creates a new [ScheduleState].
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
  ScheduleState({
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

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      desiredCapacity: map['desiredCapacity'] == null ? null : (map['desiredCapacity'] as int).input(),
      launchExpirationTime: map['launchExpirationTime'] == null ? null : (map['launchExpirationTime'] as int).input(),
      launchTime: map['launchTime'] == null ? null : (map['launchTime'] as String).input(),
      maxValue: map['maxValue'] == null ? null : (map['maxValue'] as int).input(),
      minValue: map['minValue'] == null ? null : (map['minValue'] as int).input(),
      recurrenceEndTime: map['recurrenceEndTime'] == null ? null : (map['recurrenceEndTime'] as String).input(),
      recurrenceType: map['recurrenceType'] == null ? null : (map['recurrenceType'] as String).input(),
      recurrenceValue: map['recurrenceValue'] == null ? null : (map['recurrenceValue'] as String).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId'] as String).input(),
      scheduledAction: map['scheduledAction'] == null ? null : (map['scheduledAction'] as String).input(),
      scheduledTaskName: map['scheduledTaskName'] == null ? null : (map['scheduledTaskName'] as String).input(),
      taskEnabled: map['taskEnabled'] == null ? null : (map['taskEnabled'] as bool).input(),
    );
  }
}

