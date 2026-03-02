// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostic Log properties
class DiagnosticsLogsResponse {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final pulumi.Input<String>? level;

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
      level: map['level'] == null ? null : (map['level']! as String).input(),
    );
  }
}

