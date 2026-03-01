// ignore_for_file: unused_element, unnecessary_cast


/// LinkedWorkspace specific properties.
class LinkedWorkspaceProps {
  /// ResourceId of the link target of the linked workspace.
  final String? linkedWorkspaceResourceId;
  /// ResourceId of the user assigned identity for the linked workspace.
  final String? userAssignedIdentityResourceId;

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
      linkedWorkspaceResourceId: map['linkedWorkspaceResourceId'] == null ? null : map['linkedWorkspaceResourceId'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

