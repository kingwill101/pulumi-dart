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
  const EnterpriseWorkspaceState({
    this.description,
    this.regionId,
    this.vpcId,
    this.workspaceName,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

