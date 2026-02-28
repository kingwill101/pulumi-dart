// ignore_for_file: unused_element, unnecessary_cast

import 'task_execution_response.dart';

/// Status event
class StatusEventResponse {
  /// Description of the event.
  final String description;

  /// The time this event occurred.
  final String eventTime;

  /// Task Execution
  final TaskExecutionResponse taskExecution;

  /// Task State
  final String taskState;

  /// Type of the event.
  final String type;

  /// Creates a new [StatusEventResponse].
  /// [description] Description of the event.
  /// [eventTime] The time this event occurred.
  /// [taskExecution] Task Execution
  /// [taskState] Task State
  /// [type] Type of the event.
  StatusEventResponse({
    required this.description,
    required this.eventTime,
    required this.taskExecution,
    required this.taskState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['eventTime'] = eventTime;
    map['taskExecution'] = taskExecution.toMap();
    map['taskState'] = taskState;
    map['type'] = type;
    return map;
  }

  factory StatusEventResponse.fromMap(Map<String, dynamic> map) {
    return StatusEventResponse(
      description: map['description'] as String,
      eventTime: map['eventTime'] as String,
      taskExecution: TaskExecutionResponse.fromMap(
          (map['taskExecution'] as Map).cast<String, dynamic>()),
      taskState: map['taskState'] as String,
      type: map['type'] as String,
    );
  }
}
