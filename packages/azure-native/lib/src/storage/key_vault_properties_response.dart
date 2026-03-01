// ignore_for_file: unused_element, unnecessary_cast


/// Properties of key vault.
class KeyVaultPropertiesResponse {
  /// This is a read only property that represents the expiration time of the current version of the customer managed key used for encryption.
  final String currentVersionedKeyExpirationTimestamp;
  /// The object identifier of the current versioned Key Vault Key in use.
  final String currentVersionedKeyIdentifier;
  /// The name of KeyVault key.
  final String? keyName;
  /// The Uri of KeyVault.
  final String? keyVaultUri;
  /// The version of KeyVault key.
  final String? keyVersion;
  /// Timestamp of last rotation of the Key Vault Key.
  final String lastKeyRotationTimestamp;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [currentVersionedKeyExpirationTimestamp] This is a read only property that represents the expiration time of the current version of the customer managed key used for encryption.
  /// [currentVersionedKeyIdentifier] The object identifier of the current versioned Key Vault Key in use.
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  /// [lastKeyRotationTimestamp] Timestamp of last rotation of the Key Vault Key.
  KeyVaultPropertiesResponse({
    required this.currentVersionedKeyExpirationTimestamp,
    required this.currentVersionedKeyIdentifier,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
    required this.lastKeyRotationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersionedKeyExpirationTimestamp': currentVersionedKeyExpirationTimestamp,
      'currentVersionedKeyIdentifier': currentVersionedKeyIdentifier,
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      currentVersionedKeyExpirationTimestamp: map['currentVersionedKeyExpirationTimestamp'] as String,
      currentVersionedKeyIdentifier: map['currentVersionedKeyIdentifier'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] as String,
    );
  }
}

