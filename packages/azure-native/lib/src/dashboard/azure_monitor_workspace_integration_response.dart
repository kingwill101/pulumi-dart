// ignore_for_file: unused_element, unnecessary_cast


/// Integrations for Azure Monitor Workspace.
class AzureMonitorWorkspaceIntegrationResponse {
  /// The resource Id of the connected Azure Monitor Workspace.
  final String? azureMonitorWorkspaceResourceId;

  /// Creates a new [AzureMonitorWorkspaceIntegrationResponse].
  /// [azureMonitorWorkspaceResourceId] The resource Id of the connected Azure Monitor Workspace.
  AzureMonitorWorkspaceIntegrationResponse({
    this.azureMonitorWorkspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceResourceId': ?azureMonitorWorkspaceResourceId,
    };
  }

  factory AzureMonitorWorkspaceIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceIntegrationResponse(
      azureMonitorWorkspaceResourceId: map['azureMonitorWorkspaceResourceId'] == null ? null : map['azureMonitorWorkspaceResourceId'] as String,
    );
  }
}

