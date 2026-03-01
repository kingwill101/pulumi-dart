// ignore_for_file: unused_element, unnecessary_cast


/// Configuration properties of an Azure Monitor workspace that receives change notifications.
class AzureMonitorWorkspaceProperties {
  /// The mode of includeChangeDetails feature. The flag configures whether to include or exclude content of the change before and after values.
  final String? includeChangeDetails;
  /// The Azure Monitor workspace ID - the unique identifier for the Log Analytics workspace.
  final String? workspaceId;
  /// The Azure Monitor workspace ARM Resource ID. The resource ID should be in the following format: /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}
  final String? workspaceResourceId;

  /// Creates a new [AzureMonitorWorkspaceProperties].
  /// [includeChangeDetails] The mode of includeChangeDetails feature. The flag configures whether to include or exclude content of the change before and after values.
  /// [workspaceId] The Azure Monitor workspace ID - the unique identifier for the Log Analytics workspace.
  /// [workspaceResourceId] The Azure Monitor workspace ARM Resource ID. The resource ID should be in the following format: /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}
  AzureMonitorWorkspaceProperties({
    this.includeChangeDetails,
    this.workspaceId,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChangeDetails': ?includeChangeDetails,
      'workspaceId': ?workspaceId,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureMonitorWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceProperties(
      includeChangeDetails: map['includeChangeDetails'] == null ? null : map['includeChangeDetails'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

