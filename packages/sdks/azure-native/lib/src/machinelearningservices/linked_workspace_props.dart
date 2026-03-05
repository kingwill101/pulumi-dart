// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LinkedWorkspace specific properties.
class LinkedWorkspaceProps {
  /// ResourceId of the link target of the linked workspace.
  final pulumi.Input<String>? linkedWorkspaceResourceId;
  /// ResourceId of the user assigned identity for the linked workspace.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [LinkedWorkspaceProps].
  /// [linkedWorkspaceResourceId] ResourceId of the link target of the linked workspace.
  /// [userAssignedIdentityResourceId] ResourceId of the user assigned identity for the linked workspace.
  LinkedWorkspaceProps({
    this.linkedWorkspaceResourceId,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedWorkspaceResourceId': ?linkedWorkspaceResourceId,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory LinkedWorkspaceProps.fromMap(Map<String, dynamic> map) {
    return LinkedWorkspaceProps(
      linkedWorkspaceResourceId: (() { final guardedValue = map['linkedWorkspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

