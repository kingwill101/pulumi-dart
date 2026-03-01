// ignore_for_file: unused_element, unnecessary_cast


/// Integrations for Azure Monitor Workspace.
class AzureMonitorWorkspaceIntegration {
  /// The resource Id of the connected Azure Monitor Workspace.
  final String? azureMonitorWorkspaceResourceId;

  /// Creates a new [AzureMonitorWorkspaceIntegration].
  /// [azureMonitorWorkspaceResourceId] The resource Id of the connected Azure Monitor Workspace.
  AzureMonitorWorkspaceIntegration({
    this.azureMonitorWorkspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceResourceId': ?azureMonitorWorkspaceResourceId,
    };
  }

  factory AzureMonitorWorkspaceIntegration.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceIntegration(
      azureMonitorWorkspaceResourceId: map['azureMonitorWorkspaceResourceId'] == null ? null : map['azureMonitorWorkspaceResourceId'] as String,
    );
  }
}

