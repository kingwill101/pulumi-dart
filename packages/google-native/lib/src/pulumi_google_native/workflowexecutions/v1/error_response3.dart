// ignore_for_file: unused_element, unnecessary_cast

import 'stack_trace_response2.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponse3 {
  /// Human-readable stack trace string.
  final String context;

  /// Error message and data returned represented as a JSON string.
  final String payload;

  /// Stack trace with detailed information of where error was generated.
  final StackTraceResponse2 stackTrace;

  ErrorResponse3({
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

  factory ErrorResponse3.fromMap(Map<String, dynamic> map) {
    return ErrorResponse3(
      context: map['context'] as String,
      payload: map['payload'] as String,
      stackTrace: StackTraceResponse2.fromMap(
          (map['stackTrace'] as Map).cast<String, dynamic>()),
    );
  }
}
