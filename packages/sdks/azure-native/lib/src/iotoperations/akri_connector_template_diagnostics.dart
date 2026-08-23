// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_diagnostics_logs.dart';

/// AkriConnectorTemplateDiagnostics properties.
class AkriConnectorTemplateDiagnostics {
  /// The log settings for the Connector template.
  final pulumi.Input<AkriConnectorsDiagnosticsLogs> logs;

  /// Creates a new [AkriConnectorTemplateDiagnostics].
  /// [logs] The log settings for the Connector template.
  const AkriConnectorTemplateDiagnostics({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': pulumi.Input.mapInputValue<AkriConnectorsDiagnosticsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateDiagnostics.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDiagnostics(
      logs: pulumi.Input.fromValue(AkriConnectorsDiagnosticsLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
    );
  }
}
