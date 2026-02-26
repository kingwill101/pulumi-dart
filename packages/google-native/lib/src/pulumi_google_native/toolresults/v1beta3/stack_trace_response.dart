// ignore_for_file: unused_element, unnecessary_cast

/// A stacktrace.
class StackTraceResponse {
  /// The stack trace message. Required
  final String exception;

  StackTraceResponse({
    required this.exception,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exception'] = exception;
    return map;
  }

  factory StackTraceResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse(
      exception: map['exception'] as String,
    );
  }
}
