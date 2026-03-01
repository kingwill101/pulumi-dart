// ignore_for_file: unused_element, unnecessary_cast


/// The managed application provider authorization.
class ApplicationAuthorizationResponse {
  /// The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the managed application resources.
  final String principalId;
  /// The provider's role definition identifier. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  final String roleDefinitionId;

  /// Creates a new [ApplicationAuthorizationResponse].
  /// [principalId] The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the managed application resources.
  /// [roleDefinitionId] The provider's role definition identifier. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  ApplicationAuthorizationResponse({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory ApplicationAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationAuthorizationResponse(
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

