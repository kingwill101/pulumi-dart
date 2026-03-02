// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Log properties
class DiagnosticsLogs {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final pulumi.Input<String>? level;

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
      level: map['level'] == null ? null : (map['level'] as String).input(),
    );
  }
}

