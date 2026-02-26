// ignore_for_file: unused_element, unnecessary_cast

class GetCryptoKeyVersionsVersionPublicKey {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;

  /// The public key, encoded in PEM format. For more information, see the RFC 7468 sections for General Considerations and Textual Encoding of Subject Public Key Info.
  final String pem;

  GetCryptoKeyVersionsVersionPublicKey({
    required this.algorithm,
    required this.pem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['pem'] = pem;
    return map;
  }

  factory GetCryptoKeyVersionsVersionPublicKey.fromMap(
      Map<String, dynamic> map) {
    return GetCryptoKeyVersionsVersionPublicKey(
      algorithm: map['algorithm'] as String,
      pem: map['pem'] as String,
    );
  }
}
