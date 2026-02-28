// ignore_for_file: unused_element, unnecessary_cast

/// This defines the format used to record keys used in the software supply chain. An in-toto link is attested using one or more keys defined in the in-toto layout. An example of this is: { "key_id": "776a00e29f3559e0141b3b096f696abc6cfb0c657ab40f441132b345b0...", "key_type": "rsa", "public_key_value": "-----BEGIN PUBLIC KEY-----\nMIIBojANBgkqhkiG9w0B...", "key_scheme": "rsassa-pss-sha256" } The format for in-toto's key definition can be found in section 4.2 of the in-toto specification.
class SigningKey {
  /// key_id is an identifier for the signing key.
  final String? keyId;

  /// This field contains the corresponding signature scheme. Eg: "rsassa-pss-sha256".
  final String? keyScheme;

  /// This field identifies the specific signing method. Eg: "rsa", "ed25519", and "ecdsa".
  final String? keyType;

  /// This field contains the actual public key.
  final String? publicKeyValue;

  /// Creates a new [SigningKey].
  /// [keyId] key_id is an identifier for the signing key.
  /// [keyScheme] This field contains the corresponding signature scheme. Eg: "rsassa-pss-sha256".
  /// [keyType] This field identifies the specific signing method. Eg: "rsa", "ed25519", and "ecdsa".
  /// [publicKeyValue] This field contains the actual public key.
  SigningKey({
    this.keyId,
    this.keyScheme,
    this.keyType,
    this.publicKeyValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    final keySchemeValue = keyScheme;
    if (keySchemeValue != null) {
      map['keyScheme'] = keySchemeValue;
    }
    final keyTypeValue = keyType;
    if (keyTypeValue != null) {
      map['keyType'] = keyTypeValue;
    }
    final publicKeyValueValue = publicKeyValue;
    if (publicKeyValueValue != null) {
      map['publicKeyValue'] = publicKeyValueValue;
    }
    return map;
  }

  factory SigningKey.fromMap(Map<String, dynamic> map) {
    return SigningKey(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      keyScheme: map['keyScheme'] == null ? null : map['keyScheme'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      publicKeyValue: map['publicKeyValue'] == null
          ? null
          : map['publicKeyValue'] as String,
    );
  }
}
