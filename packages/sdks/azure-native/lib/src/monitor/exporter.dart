// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_logs_exporter.dart';
import 'tcp_exporter.dart';

/// Exporter Info.
class Exporter {
  /// Azure Monitor Workspace Logs specific configurations.
  final AzureMonitorWorkspaceLogsExporter? azureMonitorWorkspaceLogs;
  /// The name of exporter.
  final String name;
  /// TCP based exporter. Used for pipelineGroup exporter.
  final TcpExporter? tcp;
  /// The type of exporter.
  final String type;

  /// Creates a new [Exporter].
  /// [azureMonitorWorkspaceLogs] Azure Monitor Workspace Logs specific configurations.
  /// [name] The name of exporter.
  /// [tcp] TCP based exporter. Used for pipelineGroup exporter.
  /// [type] The type of exporter.
  Exporter({
    this.azureMonitorWorkspaceLogs,
    required this.name,
    this.tcp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceLogs': ?azureMonitorWorkspaceLogs == null ? null : azureMonitorWorkspaceLogs!.toMap(),
      'name': name,
      'tcp': ?tcp == null ? null : tcp!.toMap(),
      'type': type,
    };
  }

  factory Exporter.fromMap(Map<String, dynamic> map) {
    return Exporter(
      azureMonitorWorkspaceLogs: map['azureMonitorWorkspaceLogs'] == null ? null : AzureMonitorWorkspaceLogsExporter.fromMap((map['azureMonitorWorkspaceLogs'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      tcp: map['tcp'] == null ? null : TcpExporter.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

