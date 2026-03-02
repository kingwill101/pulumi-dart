// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsDiagnostic Log properties.
class AkriConnectorsDiagnosticsLogs {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final pulumi.Input<String>? level;

  /// Creates a new [AkriConnectorsDiagnosticsLogs].
  /// [level] The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  AkriConnectorsDiagnosticsLogs({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
    };
  }

  factory AkriConnectorsDiagnosticsLogs.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsDiagnosticsLogs(
      level: map['level'] == null ? null : (map['level']! as String).input(),
    );
  }
}

