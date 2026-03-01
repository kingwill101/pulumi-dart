// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_diagnostics_logs_response.dart';

/// AkriConnectorTemplateDiagnostics properties.
class AkriConnectorTemplateDiagnosticsResponse {
  /// The log settings for the Connector template.
  final AkriConnectorsDiagnosticsLogsResponse logs;

  /// Creates a new [AkriConnectorTemplateDiagnosticsResponse].
  /// [logs] The log settings for the Connector template.
  AkriConnectorTemplateDiagnosticsResponse({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs.toMap(),
    };
  }

  factory AkriConnectorTemplateDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDiagnosticsResponse(
      logs: AkriConnectorsDiagnosticsLogsResponse.fromMap((map['logs'] as Map).cast<String, dynamic>()),
    );
  }
}

