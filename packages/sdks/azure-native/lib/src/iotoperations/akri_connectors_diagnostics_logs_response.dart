// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsDiagnostic Log properties.
class AkriConnectorsDiagnosticsLogsResponse {
  /// The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  final pulumi.Input<String>? level;

  /// Creates a new [AkriConnectorsDiagnosticsLogsResponse].
  /// [level] The log level. Examples - 'debug', 'info', 'warn', 'error', 'trace'.
  AkriConnectorsDiagnosticsLogsResponse({this.level});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'level': ?level};
  }

  factory AkriConnectorsDiagnosticsLogsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AkriConnectorsDiagnosticsLogsResponse(
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
