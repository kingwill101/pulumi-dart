// ignore_for_file: unused_element, unnecessary_cast

import 'connection_monitor_workspace_settings_response.dart';

/// Describes a connection monitor output destination.
class ConnectionMonitorOutputResponse {
  /// Connection monitor output destination type. Currently, only "Workspace" is supported.
  final String? type;
  /// Describes the settings for producing output into a log analytics workspace.
  final ConnectionMonitorWorkspaceSettingsResponse? workspaceSettings;

  /// Creates a new [ConnectionMonitorOutputResponse].
  /// [type] Connection monitor output destination type. Currently, only "Workspace" is supported.
  /// [workspaceSettings] Describes the settings for producing output into a log analytics workspace.
  ConnectionMonitorOutputResponse({
    this.type,
    this.workspaceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'workspaceSettings': ?workspaceSettings == null ? null : workspaceSettings!.toMap(),
    };
  }

  factory ConnectionMonitorOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorOutputResponse(
      type: map['type'] == null ? null : map['type'] as String,
      workspaceSettings: map['workspaceSettings'] == null ? null : ConnectionMonitorWorkspaceSettingsResponse.fromMap((map['workspaceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

