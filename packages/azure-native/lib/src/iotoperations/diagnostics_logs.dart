// ignore_for_file: unused_element, unnecessary_cast


/// Diagnostic Log properties
class DiagnosticsLogs {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final String? level;

  /// Creates a new [DiagnosticsLogs].
  /// [level] The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  DiagnosticsLogs({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
    };
  }

  factory DiagnosticsLogs.fromMap(Map<String, dynamic> map) {
    return DiagnosticsLogs(
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

