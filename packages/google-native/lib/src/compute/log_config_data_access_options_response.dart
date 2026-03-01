// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  /// Creates a new [LogConfigDataAccessOptionsResponse].
  /// [logMode] This is deprecated and has no effect. Do not use.
  LogConfigDataAccessOptionsResponse({required this.logMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logMode': logMode};
  }

  factory LogConfigDataAccessOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponse(
      logMode: map['logMode'] as String,
    );
  }
}
