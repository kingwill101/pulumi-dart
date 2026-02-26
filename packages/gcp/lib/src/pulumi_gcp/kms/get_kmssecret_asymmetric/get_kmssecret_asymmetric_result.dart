// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSSecretAsymmetric.
class GetKMSSecretAsymmetricResult {
  final String ciphertext;

  /// Contains the crc32 checksum of the provided ciphertext.
  final String? crc32;
  final String cryptoKeyVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Contains the result of decrypting the provided ciphertext.
  final String plaintext;

  GetKMSSecretAsymmetricResult({
    required this.ciphertext,
    this.crc32,
    required this.cryptoKeyVersion,
    required this.id,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ciphertext'] = ciphertext;
    final crc32Value = crc32;
    if (crc32Value != null) {
      map['crc32'] = crc32Value;
    }
    map['cryptoKeyVersion'] = cryptoKeyVersion;
    map['id'] = id;
    map['plaintext'] = plaintext;
    return map;
  }

  factory GetKMSSecretAsymmetricResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretAsymmetricResult(
      ciphertext: map['ciphertext'] as String,
      crc32: map['crc32'] == null ? null : map['crc32'] as String,
      cryptoKeyVersion: map['cryptoKeyVersion'] as String,
      id: map['id'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}
