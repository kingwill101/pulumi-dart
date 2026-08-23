// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_issue_args_doc}
/// Arguments for getIssue.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_issue_args_doc}
class GetIssueArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// The name of the IssueResource
  final pulumi.Input<String> issueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIssueArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [issueName] The name of the IssueResource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIssueArgs({
    required this.azureMonitorWorkspaceName,
    required this.issueName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'issueName': issueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIssueArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueArgs(
      azureMonitorWorkspaceName: pulumi.Input.fromValue(map['azureMonitorWorkspaceName'] as String),
      issueName: pulumi.Input.fromValue(map['issueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
