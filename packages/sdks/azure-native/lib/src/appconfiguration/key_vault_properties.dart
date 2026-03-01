// ignore_for_file: unused_element, unnecessary_cast


/// Settings concerning key vault encryption for a configuration store.
class KeyVaultProperties {
  /// The client id of the identity which will be used to access key vault.
  final String? identityClientId;
  /// The URI of the key vault key used to encrypt data.
  final String? keyIdentifier;

  /// Creates a new [KeyVaultProperties].
  /// [identityClientId] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] The URI of the key vault key used to encrypt data.
  KeyVaultProperties({
    this.identityClientId,
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      keyIdentifier: map['keyIdentifier'] == null ? null : map['keyIdentifier'] as String,
    );
  }
}

