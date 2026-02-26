// ignore_for_file: unused_element, unnecessary_cast

/// Message details. Describe the conditions under which messages will be sent. If no attribute is defined, no message will be sent by default. One message should specify either the job or the task level attributes, but not both. For example, job level: JOB_STATE_CHANGED and/or a specified new_job_state; task level: TASK_STATE_CHANGED and/or a specified new_task_state.
class MessageResponse {
  /// The new job state.
  final String newJobState;

  /// The new task state.
  final String newTaskState;

  /// The message type.
  final String type;

  MessageResponse({
    required this.newJobState,
    required this.newTaskState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['newJobState'] = newJobState;
    map['newTaskState'] = newTaskState;
    map['type'] = type;
    return map;
  }

  factory MessageResponse.fromMap(Map<String, dynamic> map) {
    return MessageResponse(
      newJobState: map['newJobState'] as String,
      newTaskState: map['newTaskState'] as String,
      type: map['type'] as String,
    );
  }
}
