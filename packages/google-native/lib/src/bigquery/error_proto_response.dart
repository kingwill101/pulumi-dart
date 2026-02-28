// ignore_for_file: unused_element, unnecessary_cast

class ErrorProtoResponse {
  /// Debugging information. This property is internal to Google and should not be used.
  final String debugInfo;

  /// Specifies where the error occurred, if present.
  final String location;

  /// A human-readable description of the error.
  final String message;

  /// A short error code that summarizes the error.
  final String reason;

  /// Creates a new [ErrorProtoResponse].
  /// [debugInfo] Debugging information. This property is internal to Google and should not be used.
  /// [location] Specifies where the error occurred, if present.
  /// [message] A human-readable description of the error.
  /// [reason] A short error code that summarizes the error.
  ErrorProtoResponse({
    required this.debugInfo,
    required this.location,
    required this.message,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['debugInfo'] = debugInfo;
    map['location'] = location;
    map['message'] = message;
    map['reason'] = reason;
    return map;
  }

  factory ErrorProtoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorProtoResponse(
      debugInfo: map['debugInfo'] as String,
      location: map['location'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
    );
  }
}
