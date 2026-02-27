// ignore_for_file: unused_element, unnecessary_cast

import 'stack_trace_response_workflowexecutions_v1.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponseWorkflowexecutionsV1 {
  /// Human-readable stack trace string.
  final String context;

  /// Error message and data returned represented as a JSON string.
  final String payload;

  /// Stack trace with detailed information of where error was generated.
  final StackTraceResponseWorkflowexecutionsV1 stackTrace;

  ErrorResponseWorkflowexecutionsV1({
    required this.context,
    required this.payload,
    required this.stackTrace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['context'] = context;
    map['payload'] = payload;
    map['stackTrace'] = stackTrace.toMap();
    return map;
  }

  factory ErrorResponseWorkflowexecutionsV1.fromMap(Map<String, dynamic> map) {
    return ErrorResponseWorkflowexecutionsV1(
      context: map['context'] as String,
      payload: map['payload'] as String,
      stackTrace: StackTraceResponseWorkflowexecutionsV1.fromMap(
          (map['stackTrace'] as Map).cast<String, dynamic>()),
    );
  }
}
