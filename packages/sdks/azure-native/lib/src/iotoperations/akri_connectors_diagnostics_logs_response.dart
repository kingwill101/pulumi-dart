// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsDiagnostic Log properties.
class AkriConnectorsDiagnosticsLogsResponse {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final String? level;

  /// Creates a new [AkriConnectorsDiagnosticsLogsResponse].
  /// [level] The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  AkriConnectorsDiagnosticsLogsResponse({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
    };
  }

  factory AkriConnectorsDiagnosticsLogsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsDiagnosticsLogsResponse(
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

