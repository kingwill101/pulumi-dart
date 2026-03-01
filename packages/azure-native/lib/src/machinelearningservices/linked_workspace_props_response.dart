// ignore_for_file: unused_element, unnecessary_cast


/// LinkedWorkspace specific properties.
class LinkedWorkspacePropsResponse {
  /// ResourceId of the link target of the linked workspace.
  final String? linkedWorkspaceResourceId;
  /// ResourceId of the user assigned identity for the linked workspace.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [LinkedWorkspacePropsResponse].
  /// [linkedWorkspaceResourceId] ResourceId of the link target of the linked workspace.
  /// [userAssignedIdentityResourceId] ResourceId of the user assigned identity for the linked workspace.
  LinkedWorkspacePropsResponse({
    this.linkedWorkspaceResourceId,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedWorkspaceResourceId': ?linkedWorkspaceResourceId,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory LinkedWorkspacePropsResponse.fromMap(Map<String, dynamic> map) {
    return LinkedWorkspacePropsResponse(
      linkedWorkspaceResourceId: map['linkedWorkspaceResourceId'] == null ? null : map['linkedWorkspaceResourceId'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

