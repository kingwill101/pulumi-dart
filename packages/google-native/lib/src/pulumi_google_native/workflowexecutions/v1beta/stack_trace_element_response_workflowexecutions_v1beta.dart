// ignore_for_file: unused_element, unnecessary_cast

import 'position_response_workflowexecutions_v1beta.dart';

/// A single stack element (frame) where an error occurred.
class StackTraceElementResponseWorkflowexecutionsV1beta {
  /// The source position information of the stack trace element.
  final PositionResponseWorkflowexecutionsV1beta position;

  /// The routine where the error occurred.
  final String routine;

  /// The step the error occurred at.
  final String step;

  StackTraceElementResponseWorkflowexecutionsV1beta({
    required this.position,
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['position'] = position.toMap();
    map['routine'] = routine;
    map['step'] = step;
    return map;
  }

  factory StackTraceElementResponseWorkflowexecutionsV1beta.fromMap(
      Map<String, dynamic> map) {
    return StackTraceElementResponseWorkflowexecutionsV1beta(
      position: PositionResponseWorkflowexecutionsV1beta.fromMap(
          (map['position'] as Map).cast<String, dynamic>()),
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
