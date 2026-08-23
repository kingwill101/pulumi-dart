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
  const Exporter({
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
      azureMonitorWorkspaceLogs: (() { final guardedValue = map['azureMonitorWorkspaceLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorWorkspaceLogsExporter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpExporter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
