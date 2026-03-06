// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties of an Azure Monitor workspace that receives change notifications.
class AzureMonitorWorkspacePropertiesResponse {
  /// The mode of includeChangeDetails feature. The flag configures whether to include or exclude content of the change before and after values.
  final pulumi.Input<String>? includeChangeDetails;
  /// The Azure Monitor workspace ID - the unique identifier for the Log Analytics workspace.
  final pulumi.Input<String>? workspaceId;
  /// The Azure Monitor workspace ARM Resource ID. The resource ID should be in the following format: /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [AzureMonitorWorkspacePropertiesResponse].
  /// [includeChangeDetails] The mode of includeChangeDetails feature. The flag configures whether to include or exclude content of the change before and after values.
  /// [workspaceId] The Azure Monitor workspace ID - the unique identifier for the Log Analytics workspace.
  /// [workspaceResourceId] The Azure Monitor workspace ARM Resource ID. The resource ID should be in the following format: /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}
  const AzureMonitorWorkspacePropertiesResponse({
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

  factory AzureMonitorWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspacePropertiesResponse(
      includeChangeDetails: (() { final guardedValue = map['includeChangeDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

