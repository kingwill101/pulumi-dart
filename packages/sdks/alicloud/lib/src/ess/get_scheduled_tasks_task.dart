// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScheduledTasksTask {
  /// Description of the scheduled task.
  final pulumi.Input<String> description;
  /// ID of the scheduled task id.
  final pulumi.Input<String> id;
  /// The time period during which a failed scheduled task is retried.
  final pulumi.Input<int> launchExpirationTime;
  /// The time at which the scheduled task is triggered.
  final pulumi.Input<String> launchTime;
  final pulumi.Input<int> maxValue;
  final pulumi.Input<int> minValue;
  /// Name of the scheduled task name.
  final pulumi.Input<String> name;
  /// Specifies the end time after which the scheduled task is no longer repeated.
  final pulumi.Input<String> recurrenceEndTime;
  /// Specifies the recurrence type of the scheduled task.
  final pulumi.Input<String> recurrenceType;
  /// Specifies how often a scheduled task recurs.
  final pulumi.Input<String> recurrenceValue;
  /// The operation to be performed when a scheduled task is triggered.
  final pulumi.Input<String> scheduledAction;
  final pulumi.Input<bool> taskEnabled;

  /// Creates a new [GetScheduledTasksTask].
  /// [description] Description of the scheduled task.
  /// [id] ID of the scheduled task id.
  /// [launchExpirationTime] The time period during which a failed scheduled task is retried.
  /// [launchTime] The time at which the scheduled task is triggered.
  /// [maxValue] Required.
  /// [minValue] Required.
  /// [name] Name of the scheduled task name.
  /// [recurrenceEndTime] Specifies the end time after which the scheduled task is no longer repeated.
  /// [recurrenceType] Specifies the recurrence type of the scheduled task.
  /// [recurrenceValue] Specifies how often a scheduled task recurs.
  /// [scheduledAction] The operation to be performed when a scheduled task is triggered.
  /// [taskEnabled] Required.
  GetScheduledTasksTask({
    required this.description,
    required this.id,
    required this.launchExpirationTime,
    required this.launchTime,
    required this.maxValue,
    required this.minValue,
    required this.name,
    required this.recurrenceEndTime,
    required this.recurrenceType,
    required this.recurrenceValue,
    required this.scheduledAction,
    required this.taskEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'launchExpirationTime': launchExpirationTime,
      'launchTime': launchTime,
      'maxValue': maxValue,
      'minValue': minValue,
      'name': name,
      'recurrenceEndTime': recurrenceEndTime,
      'recurrenceType': recurrenceType,
      'recurrenceValue': recurrenceValue,
      'scheduledAction': scheduledAction,
      'taskEnabled': taskEnabled,
    };
  }

  factory GetScheduledTasksTask.fromMap(Map<String, dynamic> map) {
    return GetScheduledTasksTask(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      launchExpirationTime: pulumi.Input.fromValue(map['launchExpirationTime'] as int),
      launchTime: pulumi.Input.fromValue(map['launchTime'] as String),
      maxValue: pulumi.Input.fromValue(map['maxValue'] as int),
      minValue: pulumi.Input.fromValue(map['minValue'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrenceEndTime: pulumi.Input.fromValue(map['recurrenceEndTime'] as String),
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      recurrenceValue: pulumi.Input.fromValue(map['recurrenceValue'] as String),
      scheduledAction: pulumi.Input.fromValue(map['scheduledAction'] as String),
      taskEnabled: pulumi.Input.fromValue(map['taskEnabled'] as bool),
    );
  }
}

