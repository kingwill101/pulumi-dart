// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_workspace_enterprise_workspace_args_doc}
/// The set of arguments for EnterpriseWorkspace.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_workspace_enterprise_workspace_args_doc}
class EnterpriseWorkspaceArgs {
  /// The description of the Workspace.
  final pulumi.Input<String> description;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The name of the Workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EnterpriseWorkspaceArgs].
  /// [description] The description of the Workspace.
  /// [vpcId] The ID of the VPC.
  /// [workspaceName] The name of the Workspace.
  EnterpriseWorkspaceArgs({
    required pulumi.Output<String> description,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> workspaceName,
  }) :
      description = pulumi.Input.asInput<String>(description),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'vpcId': vpcId,
      'workspaceName': workspaceName,
    };
  }

  factory EnterpriseWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseWorkspaceArgs(
      description: pulumi.Output.create<String>(map['description'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

