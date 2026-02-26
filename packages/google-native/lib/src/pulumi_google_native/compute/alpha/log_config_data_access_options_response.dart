// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  LogConfigDataAccessOptionsResponse({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logMode'] = logMode;
    return map;
  }

  factory LogConfigDataAccessOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponse(
      logMode: map['logMode'] as String,
    );
  }
}
