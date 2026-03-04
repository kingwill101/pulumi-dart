// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_list_issue_alerts_args_doc}
/// Arguments for listIssueAlerts.
/// {@endtemplate}
/// {@macro pulumi_monitor_list_issue_alerts_args_doc}
class ListIssueAlertsArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;

  /// The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'". Note: this property is currently a placeholder and is not in use.
  final pulumi.Input<String>? filter;

  /// The name of the IssueResource
  final pulumi.Input<String> issueName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIssueAlertsArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [filter] The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'". Note: this property is currently a placeholder and is not in use.
  /// [issueName] The name of the IssueResource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListIssueAlertsArgs({
    required this.azureMonitorWorkspaceName,
    this.filter,
    required this.issueName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'filter': ?filter,
      'issueName': issueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIssueAlertsArgs.fromMap(Map<String, dynamic> map) {
    return ListIssueAlertsArgs(
      azureMonitorWorkspaceName: pulumi.Input.fromValue(
        map['azureMonitorWorkspaceName'] as String,
      ),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issueName: pulumi.Input.fromValue(map['issueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
