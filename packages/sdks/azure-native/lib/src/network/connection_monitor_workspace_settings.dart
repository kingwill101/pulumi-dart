// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the settings for producing output into a log analytics workspace.
class ConnectionMonitorWorkspaceSettings {
  /// Log analytics workspace resource ID.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [ConnectionMonitorWorkspaceSettings].
  /// [workspaceResourceId] Log analytics workspace resource ID.
  const ConnectionMonitorWorkspaceSettings({
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory ConnectionMonitorWorkspaceSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorWorkspaceSettings(
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

