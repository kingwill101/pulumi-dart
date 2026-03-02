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
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      launchExpirationTime: (map['launchExpirationTime'] as int).input(),
      launchTime: (map['launchTime'] as String).input(),
      maxValue: (map['maxValue'] as int).input(),
      minValue: (map['minValue'] as int).input(),
      name: (map['name'] as String).input(),
      recurrenceEndTime: (map['recurrenceEndTime'] as String).input(),
      recurrenceType: (map['recurrenceType'] as String).input(),
      recurrenceValue: (map['recurrenceValue'] as String).input(),
      scheduledAction: (map['scheduledAction'] as String).input(),
      taskEnabled: (map['taskEnabled'] as bool).input(),
    );
  }
}

