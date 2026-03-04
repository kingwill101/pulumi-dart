// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integrations for Azure Monitor Workspace.
class AzureMonitorWorkspaceIntegration {
  /// The resource Id of the connected Azure Monitor Workspace.
  final pulumi.Input<String>? azureMonitorWorkspaceResourceId;

  /// Creates a new [AzureMonitorWorkspaceIntegration].
  /// [azureMonitorWorkspaceResourceId] The resource Id of the connected Azure Monitor Workspace.
  AzureMonitorWorkspaceIntegration({this.azureMonitorWorkspaceResourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceResourceId': ?azureMonitorWorkspaceResourceId,
    };
  }

  factory AzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceIntegration(
      azureMonitorWorkspaceResourceId: (() {
        final guardedValue = map['azureMonitorWorkspaceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
