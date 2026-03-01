// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_diagnostics_logs.dart';

/// AkriConnectorTemplateDiagnostics properties.
class AkriConnectorTemplateDiagnostics {
  /// The log settings for the Connector template.
  final AkriConnectorsDiagnosticsLogs logs;

  /// Creates a new [AkriConnectorTemplateDiagnostics].
  /// [logs] The log settings for the Connector template.
  AkriConnectorTemplateDiagnostics({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs.toMap(),
    };
  }

  factory AkriConnectorTemplateDiagnostics.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDiagnostics(
      logs: AkriConnectorsDiagnosticsLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
    );
  }
}

