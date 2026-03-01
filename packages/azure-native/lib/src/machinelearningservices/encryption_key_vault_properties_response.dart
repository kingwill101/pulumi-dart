// ignore_for_file: unused_element, unnecessary_cast


class EncryptionKeyVaultPropertiesResponse {
  /// For future use - The client id of the identity which will be used to access key vault.
  final String? identityClientId;
  /// Key vault uri to access the encryption key.
  final String keyIdentifier;
  /// The ArmId of the keyVault where the customer owned encryption key is present.
  final String keyVaultArmId;

  /// Creates a new [EncryptionKeyVaultPropertiesResponse].
  /// [identityClientId] For future use - The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  /// [keyVaultArmId] The ArmId of the keyVault where the customer owned encryption key is present.
  EncryptionKeyVaultPropertiesResponse({
    this.identityClientId,
    required this.keyIdentifier,
    required this.keyVaultArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyIdentifier': keyIdentifier,
      'keyVaultArmId': keyVaultArmId,
    };
  }

  factory EncryptionKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyVaultPropertiesResponse(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      keyIdentifier: map['keyIdentifier'] as String,
      keyVaultArmId: map['keyVaultArmId'] as String,
    );
  }
}

