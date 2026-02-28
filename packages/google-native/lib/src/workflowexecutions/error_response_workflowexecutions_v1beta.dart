// ignore_for_file: unused_element, unnecessary_cast

import 'stack_trace_response_workflowexecutions_v1beta.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponseWorkflowexecutionsV1beta {
  /// Human-readable stack trace string.
  final String context;

  /// Error message and data returned represented as a JSON string.
  final String payload;

  /// Stack trace with detailed information of where error was generated.
  final StackTraceResponseWorkflowexecutionsV1beta stackTrace;

  /// Creates a new [ErrorResponseWorkflowexecutionsV1beta].
  /// [context] Human-readable stack trace string.
  /// [payload] Error message and data returned represented as a JSON string.
  /// [stackTrace] Stack trace with detailed information of where error was generated.
  ErrorResponseWorkflowexecutionsV1beta({
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

  factory ErrorResponseWorkflowexecutionsV1beta.fromMap(
      Map<String, dynamic> map) {
    return ErrorResponseWorkflowexecutionsV1beta(
      context: map['context'] as String,
      payload: map['payload'] as String,
      stackTrace: StackTraceResponseWorkflowexecutionsV1beta.fromMap(
          (map['stackTrace'] as Map).cast<String, dynamic>()),
    );
  }
}
