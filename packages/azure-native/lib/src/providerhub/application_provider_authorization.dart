// ignore_for_file: unused_element, unnecessary_cast


class ApplicationProviderAuthorization {
  /// The managed by role definition ID for the application.
  final String? managedByRoleDefinitionId;
  /// The role definition ID for the application.
  final String? roleDefinitionId;

  /// Creates a new [ApplicationProviderAuthorization].
  /// [managedByRoleDefinitionId] The managed by role definition ID for the application.
  /// [roleDefinitionId] The role definition ID for the application.
  ApplicationProviderAuthorization({
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ApplicationProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ApplicationProviderAuthorization(
      managedByRoleDefinitionId: map['managedByRoleDefinitionId'] == null ? null : map['managedByRoleDefinitionId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

