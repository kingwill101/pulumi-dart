// ignore_for_file: unused_element, unnecessary_cast


class KeyVaultPropertiesResponse {
  /// The client id of the identity which will be used to access key vault.
  final String? identity;
  /// Key vault uri to access the encryption key.
  final String? keyIdentifier;
  /// Auto key rotation status for a CMK enabled registry.
  final bool keyRotationEnabled;
  /// Timestamp of the last successful key rotation.
  final String lastKeyRotationTimestamp;
  /// The fully qualified key identifier that includes the version of the key that is actually used for encryption.
  final String versionedKeyIdentifier;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [identity] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  /// [keyRotationEnabled] Auto key rotation status for a CMK enabled registry.
  /// [lastKeyRotationTimestamp] Timestamp of the last successful key rotation.
  /// [versionedKeyIdentifier] The fully qualified key identifier that includes the version of the key that is actually used for encryption.
  KeyVaultPropertiesResponse({
    this.identity,
    this.keyIdentifier,
    required this.keyRotationEnabled,
    required this.lastKeyRotationTimestamp,
    required this.versionedKeyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyIdentifier': ?keyIdentifier,
      'keyRotationEnabled': keyRotationEnabled,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
      'versionedKeyIdentifier': versionedKeyIdentifier,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyIdentifier: map['keyIdentifier'] == null ? null : map['keyIdentifier'] as String,
      keyRotationEnabled: map['keyRotationEnabled'] as bool,
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] as String,
      versionedKeyIdentifier: map['versionedKeyIdentifier'] as String,
    );
  }
}

