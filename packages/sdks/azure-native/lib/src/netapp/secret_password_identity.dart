// ignore_for_file: unused_element, unnecessary_cast


/// Identity used to authenticate with key vault.
class SecretPasswordIdentity {
  /// The Azure resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  final String? userAssignedIdentity;

  /// Creates a new [SecretPasswordIdentity].
  /// [userAssignedIdentity] The Azure resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  SecretPasswordIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory SecretPasswordIdentity.fromMap(Map<String, dynamic> map) {
    return SecretPasswordIdentity(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

