// ignore_for_file: unused_element, unnecessary_cast


/// Encryption identity for the volume group.
class EncryptionIdentityResponse {
  /// Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  final String? encryptionUserAssignedIdentity;

  /// Creates a new [EncryptionIdentityResponse].
  /// [encryptionUserAssignedIdentity] Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  EncryptionIdentityResponse({
    this.encryptionUserAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionUserAssignedIdentity': ?encryptionUserAssignedIdentity,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      encryptionUserAssignedIdentity: map['encryptionUserAssignedIdentity'] == null ? null : map['encryptionUserAssignedIdentity'] as String,
    );
  }
}

