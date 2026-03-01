// ignore_for_file: unused_element, unnecessary_cast


class KeyVaultProperties {
  /// The client id of the identity which will be used to access key vault.
  final String? identity;
  /// Key vault uri to access the encryption key.
  final String? keyIdentifier;

  /// Creates a new [KeyVaultProperties].
  /// [identity] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  KeyVaultProperties({
    this.identity,
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyIdentifier: map['keyIdentifier'] == null ? null : map['keyIdentifier'] as String,
    );
  }
}

