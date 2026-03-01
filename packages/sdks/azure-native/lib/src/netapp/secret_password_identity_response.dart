// ignore_for_file: unused_element, unnecessary_cast


/// Identity used to authenticate with key vault.
class SecretPasswordIdentityResponse {
  /// The principal ID (object ID) of the identity used to authenticate with key vault. Read-only.
  final String principalId;
  /// The Azure resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  final String? userAssignedIdentity;

  /// Creates a new [SecretPasswordIdentityResponse].
  /// [principalId] The principal ID (object ID) of the identity used to authenticate with key vault. Read-only.
  /// [userAssignedIdentity] The Azure resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  SecretPasswordIdentityResponse({
    required this.principalId,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory SecretPasswordIdentityResponse.fromMap(Map<String, dynamic> map) {
    return SecretPasswordIdentityResponse(
      principalId: map['principalId'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

