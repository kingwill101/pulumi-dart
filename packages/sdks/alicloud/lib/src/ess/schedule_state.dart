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
  const ScheduleState({
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

