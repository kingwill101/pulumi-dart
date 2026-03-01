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
  GetIssueArgs({
    required pulumi.Output<String> azureMonitorWorkspaceName,
    required pulumi.Output<String> issueName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      issueName = pulumi.Input.asInput<String>(issueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'issueName': issueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIssueArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueArgs(
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      issueName: pulumi.Output.create<String>(map['issueName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

