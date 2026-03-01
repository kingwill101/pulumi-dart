// ignore_for_file: unused_element, unnecessary_cast


class ApplicationProviderAuthorizationResponse {
  /// The managed by role definition ID for the application.
  final String? managedByRoleDefinitionId;
  /// The role definition ID for the application.
  final String? roleDefinitionId;

  /// Creates a new [ApplicationProviderAuthorizationResponse].
  /// [managedByRoleDefinitionId] The managed by role definition ID for the application.
  /// [roleDefinitionId] The role definition ID for the application.
  ApplicationProviderAuthorizationResponse({
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ApplicationProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationProviderAuthorizationResponse(
      managedByRoleDefinitionId: map['managedByRoleDefinitionId'] == null ? null : map['managedByRoleDefinitionId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

