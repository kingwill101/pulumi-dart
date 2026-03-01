// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_list_issue_resources_args_doc}
/// Arguments for listIssueResources.
/// {@endtemplate}
/// {@macro pulumi_monitor_list_issue_resources_args_doc}
class ListIssueResourcesArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'". Note: this property is currently a placeholder and is not in use.
  final pulumi.Input<String>? filter;
  /// The name of the IssueResource
  final pulumi.Input<String> issueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIssueResourcesArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [filter] The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'". Note: this property is currently a placeholder and is not in use.
  /// [issueName] The name of the IssueResource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListIssueResourcesArgs({
    required String azureMonitorWorkspaceName,
    String? filter,
    required String issueName,
    required String resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      issueName = pulumi.Input.asInput<String>(issueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'filter': ?filter,
      'issueName': issueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIssueResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ListIssueResourcesArgs(
      azureMonitorWorkspaceName: map['azureMonitorWorkspaceName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      issueName: map['issueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

