// ignore_for_file: unused_element, unnecessary_cast

/// A stacktrace.
class StackTrace {
  /// The stack trace message. Required
  final String? exception;

  StackTrace({
    this.exception,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exceptionValue = exception;
    if (exceptionValue != null) {
      map['exception'] = exceptionValue;
    }
    return map;
  }

  factory StackTrace.fromMap(Map<String, dynamic> map) {
    return StackTrace(
      exception: map['exception'] == null ? null : map['exception'] as String,
    );
  }
}
