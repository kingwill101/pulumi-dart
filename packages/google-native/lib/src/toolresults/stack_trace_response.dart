// ignore_for_file: unused_element, unnecessary_cast


/// A stacktrace.
class StackTraceResponse {
  /// The stack trace message. Required
  final String exception;

  /// Creates a new [StackTraceResponse].
  /// [exception] The stack trace message. Required
  StackTraceResponse({
    required this.exception,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exception': exception,
    };
  }

  factory StackTraceResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceResponse(
      exception: map['exception'] as String,
    );
  }
}

