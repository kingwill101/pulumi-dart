// ignore_for_file: unused_element, unnecessary_cast

import 'message_new_job_state.dart';
import 'message_new_task_state.dart';
import 'message_type.dart';

/// Message details. Describe the conditions under which messages will be sent. If no attribute is defined, no message will be sent by default. One message should specify either the job or the task level attributes, but not both. For example, job level: JOB_STATE_CHANGED and/or a specified new_job_state; task level: TASK_STATE_CHANGED and/or a specified new_task_state.
class Message {
  /// The new job state.
  final MessageNewJobState? newJobState;

  /// The new task state.
  final MessageNewTaskState? newTaskState;

  /// The message type.
  final MessageType? type;

  /// Creates a new [Message].
  /// [newJobState] The new job state.
  /// [newTaskState] The new task state.
  /// [type] The message type.
  Message({this.newJobState, this.newTaskState, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newJobState': ?newJobState == null ? null : newJobState!.value,
      'newTaskState': ?newTaskState == null ? null : newTaskState!.value,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      newJobState: map['newJobState'] == null
          ? null
          : MessageNewJobState.fromValue(map['newJobState'] as String),
      newTaskState: map['newTaskState'] == null
          ? null
          : MessageNewTaskState.fromValue(map['newTaskState'] as String),
      type: map['type'] == null
          ? null
          : MessageType.fromValue(map['type'] as String),
    );
  }
}
