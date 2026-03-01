// ignore_for_file: unused_element, unnecessary_cast


/// Diagnostic Log properties
class DiagnosticsLogsResponse {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final String? level;

  /// Creates a new [DiagnosticsLogsResponse].
  /// [level] The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  DiagnosticsLogsResponse({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
    };
  }

  factory DiagnosticsLogsResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsLogsResponse(
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

