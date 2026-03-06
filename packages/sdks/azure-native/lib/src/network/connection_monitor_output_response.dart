// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_workspace_settings_response.dart';

/// Describes a connection monitor output destination.
class ConnectionMonitorOutputResponse {
  /// Connection monitor output destination type. Currently, only "Workspace" is supported.
  final pulumi.Input<String>? type;
  /// Describes the settings for producing output into a log analytics workspace.
  final pulumi.Input<ConnectionMonitorWorkspaceSettingsResponse>? workspaceSettings;

  /// Creates a new [ConnectionMonitorOutputResponse].
  /// [type] Connection monitor output destination type. Currently, only "Workspace" is supported.
  /// [workspaceSettings] Describes the settings for producing output into a log analytics workspace.
  const ConnectionMonitorOutputResponse({
    this.type,
    this.workspaceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'workspaceSettings': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorWorkspaceSettingsResponse, Map<String, dynamic>>(workspaceSettings, (value) => value.toMap()),
    };
  }

  factory ConnectionMonitorOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorOutputResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceSettings: (() { final guardedValue = map['workspaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorWorkspaceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

