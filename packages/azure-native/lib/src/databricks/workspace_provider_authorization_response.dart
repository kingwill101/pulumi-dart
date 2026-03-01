// ignore_for_file: unused_element, unnecessary_cast


/// The workspace provider authorization.
class WorkspaceProviderAuthorizationResponse {
  /// The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the workspace resources.
  final String principalId;
  /// The provider's role definition identifier. This role will define all the permissions that the provider must have on the workspace's container resource group. This role definition cannot have permission to delete the resource group.
  final String roleDefinitionId;

  /// Creates a new [WorkspaceProviderAuthorizationResponse].
  /// [principalId] The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the workspace resources.
  /// [roleDefinitionId] The provider's role definition identifier. This role will define all the permissions that the provider must have on the workspace's container resource group. This role definition cannot have permission to delete the resource group.
  WorkspaceProviderAuthorizationResponse({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory WorkspaceProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceProviderAuthorizationResponse(
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

