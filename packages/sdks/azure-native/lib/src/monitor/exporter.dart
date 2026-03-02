// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_logs_exporter.dart';
import 'tcp_exporter.dart';

/// Exporter Info.
class Exporter {
  /// Azure Monitor Workspace Logs specific configurations.
  final pulumi.Input<AzureMonitorWorkspaceLogsExporter>? azureMonitorWorkspaceLogs;
  /// The name of exporter.
  final pulumi.Input<String> name;
  /// TCP based exporter. Used for pipelineGroup exporter.
  final pulumi.Input<TcpExporter>? tcp;
  /// The type of exporter.
  final pulumi.Input<String> type;

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
      'azureMonitorWorkspaceLogs': ?pulumi.Input.mapOptionalInputValue<AzureMonitorWorkspaceLogsExporter, Map<String, dynamic>>(azureMonitorWorkspaceLogs, (value) => value.toMap()),
      'name': name,
      'tcp': ?pulumi.Input.mapOptionalInputValue<TcpExporter, Map<String, dynamic>>(tcp, (value) => value.toMap()),
      'type': type,
    };
  }

  factory Exporter.fromMap(Map<String, dynamic> map) {
    return Exporter(
      azureMonitorWorkspaceLogs: map['azureMonitorWorkspaceLogs'] == null ? null : (AzureMonitorWorkspaceLogsExporter.fromMap((map['azureMonitorWorkspaceLogs'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      tcp: map['tcp'] == null ? null : (TcpExporter.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

