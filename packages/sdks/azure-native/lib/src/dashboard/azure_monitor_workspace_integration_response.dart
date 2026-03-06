// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integrations for Azure Monitor Workspace.
class AzureMonitorWorkspaceIntegrationResponse {
  /// The resource Id of the connected Azure Monitor Workspace.
  final pulumi.Input<String>? azureMonitorWorkspaceResourceId;

  /// Creates a new [AzureMonitorWorkspaceIntegrationResponse].
  /// [azureMonitorWorkspaceResourceId] The resource Id of the connected Azure Monitor Workspace.
  const AzureMonitorWorkspaceIntegrationResponse({
    this.azureMonitorWorkspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceResourceId': ?azureMonitorWorkspaceResourceId,
    };
  }

  factory AzureMonitorWorkspaceIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceIntegrationResponse(
      azureMonitorWorkspaceResourceId: (() { final guardedValue = map['azureMonitorWorkspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

