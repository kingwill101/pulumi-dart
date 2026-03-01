// ignore_for_file: unused_element, unnecessary_cast


class GetScheduledTasksTask {
  /// Description of the scheduled task.
  final String description;
  /// ID of the scheduled task id.
  final String id;
  /// The time period during which a failed scheduled task is retried.
  final int launchExpirationTime;
  /// The time at which the scheduled task is triggered.
  final String launchTime;
  final int maxValue;
  final int minValue;
  /// Name of the scheduled task name.
  final String name;
  /// Specifies the end time after which the scheduled task is no longer repeated.
  final String recurrenceEndTime;
  /// Specifies the recurrence type of the scheduled task.
  final String recurrenceType;
  /// Specifies how often a scheduled task recurs.
  final String recurrenceValue;
  /// The operation to be performed when a scheduled task is triggered.
  final String scheduledAction;
  final bool taskEnabled;

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
      description: map['description'] as String,
      id: map['id'] as String,
      launchExpirationTime: map['launchExpirationTime'] as int,
      launchTime: map['launchTime'] as String,
      maxValue: map['maxValue'] as int,
      minValue: map['minValue'] as int,
      name: map['name'] as String,
      recurrenceEndTime: map['recurrenceEndTime'] as String,
      recurrenceType: map['recurrenceType'] as String,
      recurrenceValue: map['recurrenceValue'] as String,
      scheduledAction: map['scheduledAction'] as String,
      taskEnabled: map['taskEnabled'] as bool,
    );
  }
}

