// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_logs_exporter_response.dart';
import 'tcp_exporter_response.dart';

/// Exporter Info.
class ExporterResponse {
  /// Azure Monitor Workspace Logs specific configurations.
  final pulumi.Input<AzureMonitorWorkspaceLogsExporterResponse>? azureMonitorWorkspaceLogs;
  /// The name of exporter.
  final pulumi.Input<String> name;
  /// TCP based exporter. Used for pipelineGroup exporter.
  final pulumi.Input<TcpExporterResponse>? tcp;
  /// The type of exporter.
  final pulumi.Input<String> type;

  /// Creates a new [ExporterResponse].
  /// [azureMonitorWorkspaceLogs] Azure Monitor Workspace Logs specific configurations.
  /// [name] The name of exporter.
  /// [tcp] TCP based exporter. Used for pipelineGroup exporter.
  /// [type] The type of exporter.
  ExporterResponse({
    this.azureMonitorWorkspaceLogs,
    required this.name,
    this.tcp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceLogs': ?pulumi.Input.mapOptionalInputValue<AzureMonitorWorkspaceLogsExporterResponse, Map<String, dynamic>>(azureMonitorWorkspaceLogs, (value) => value.toMap()),
      'name': name,
      'tcp': ?pulumi.Input.mapOptionalInputValue<TcpExporterResponse, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ExporterResponse.fromMap(Map<String, dynamic> map) {
    return ExporterResponse(
      azureMonitorWorkspaceLogs: (() { final guardedValue = map['azureMonitorWorkspaceLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorWorkspaceLogsExporterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpExporterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

