// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_verifier_workspace_args_doc}
/// Arguments for getVerifierWorkspace.
/// {@endtemplate}
/// {@macro pulumi_network_get_verifier_workspace_args_doc}
class GetVerifierWorkspaceArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetVerifierWorkspaceArgs].
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  GetVerifierWorkspaceArgs({
    required String networkManagerName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetVerifierWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetVerifierWorkspaceArgs(
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

