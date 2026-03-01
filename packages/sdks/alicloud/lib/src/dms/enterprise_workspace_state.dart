// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseWorkspace resources.
class EnterpriseWorkspaceState {
  /// The description of the Workspace.
  final pulumi.Input<String>? description;
  /// The region ID of the resource.
  final pulumi.Input<String>? regionId;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The name of the Workspace.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [EnterpriseWorkspaceState].
  /// [description] The description of the Workspace.
  /// [regionId] The region ID of the resource.
  /// [vpcId] The ID of the VPC.
  /// [workspaceName] The name of the Workspace.
  EnterpriseWorkspaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? workspaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'regionId': ?regionId,
      'vpcId': ?vpcId,
      'workspaceName': ?workspaceName,
    };
  }

  factory EnterpriseWorkspaceState.fromMap(Map<String, dynamic> map) {
    return EnterpriseWorkspaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

