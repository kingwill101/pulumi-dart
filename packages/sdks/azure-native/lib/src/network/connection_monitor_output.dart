// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_workspace_settings.dart';

/// Describes a connection monitor output destination.
class ConnectionMonitorOutput {
  /// Connection monitor output destination type. Currently, only "Workspace" is supported.
  final pulumi.Input<String>? type;
  /// Describes the settings for producing output into a log analytics workspace.
  final pulumi.Input<ConnectionMonitorWorkspaceSettings>? workspaceSettings;

  /// Creates a new [ConnectionMonitorOutput].
  /// [type] Connection monitor output destination type. Currently, only "Workspace" is supported.
  /// [workspaceSettings] Describes the settings for producing output into a log analytics workspace.
  ConnectionMonitorOutput({
    this.type,
    this.workspaceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'workspaceSettings': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorWorkspaceSettings, Map<String, dynamic>>(workspaceSettings, (value) => value.toMap()),
    };
  }

  factory ConnectionMonitorOutput.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorOutput(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      workspaceSettings: map['workspaceSettings'] == null ? null : (ConnectionMonitorWorkspaceSettings.fromMap((map['workspaceSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

