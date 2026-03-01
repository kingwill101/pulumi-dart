// ignore_for_file: unused_element, unnecessary_cast


/// Identity used to authenticate with key vault.
class EncryptionIdentity {
  /// The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  final String? userAssignedIdentity;

  /// Creates a new [EncryptionIdentity].
  /// [userAssignedIdentity] The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  EncryptionIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentity(
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

