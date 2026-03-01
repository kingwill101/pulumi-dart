// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Active Directory principal identifier and Azure built-in role that describes the access the principal will receive on the delegated resource in the managed tenant.
class AuthorizationResponse {
  /// The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role. It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.
  final List<String>? delegatedRoleDefinitionIds;
  /// The identifier of the Azure Active Directory principal.
  final String principalId;
  /// The display name of the Azure Active Directory principal.
  final String? principalIdDisplayName;
  /// The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  final String roleDefinitionId;

  /// Creates a new [AuthorizationResponse].
  /// [delegatedRoleDefinitionIds] The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role. It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.
  /// [principalId] The identifier of the Azure Active Directory principal.
  /// [principalIdDisplayName] The display name of the Azure Active Directory principal.
  /// [roleDefinitionId] The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  AuthorizationResponse({
    this.delegatedRoleDefinitionIds,
    required this.principalId,
    this.principalIdDisplayName,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedRoleDefinitionIds': ?delegatedRoleDefinitionIds,
      'principalId': principalId,
      'principalIdDisplayName': ?principalIdDisplayName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory AuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationResponse(
      delegatedRoleDefinitionIds: map['delegatedRoleDefinitionIds'] == null ? null : (map['delegatedRoleDefinitionIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      principalIdDisplayName: map['principalIdDisplayName'] == null ? null : map['principalIdDisplayName'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

