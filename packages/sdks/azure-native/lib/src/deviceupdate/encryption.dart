// ignore_for_file: unused_element, unnecessary_cast


/// The CMK encryption settings on the Device Update account.
class Encryption {
  /// The URI of the key vault
  final String? keyVaultKeyUri;
  /// The full resourceId of the user assigned identity to be used for key vault access. Identity has to be also assigned to the Account
  final String? userAssignedIdentity;

  /// Creates a new [Encryption].
  /// [keyVaultKeyUri] The URI of the key vault
  /// [userAssignedIdentity] The full resourceId of the user assigned identity to be used for key vault access. Identity has to be also assigned to the Account
  Encryption({
    this.keyVaultKeyUri,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keyVaultKeyUri: map['keyVaultKeyUri'] == null ? null : map['keyVaultKeyUri'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

