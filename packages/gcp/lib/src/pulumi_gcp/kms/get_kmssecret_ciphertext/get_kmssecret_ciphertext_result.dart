// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSSecretCiphertext.
class GetKMSSecretCiphertextResult {
  /// Contains the result of encrypting the provided plaintext, encoded in base64.
  final String ciphertext;
  final String cryptoKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String plaintext;

  GetKMSSecretCiphertextResult({
    required this.ciphertext,
    required this.cryptoKey,
    required this.id,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ciphertext'] = ciphertext;
    map['cryptoKey'] = cryptoKey;
    map['id'] = id;
    map['plaintext'] = plaintext;
    return map;
  }

  factory GetKMSSecretCiphertextResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretCiphertextResult(
      ciphertext: map['ciphertext'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}
