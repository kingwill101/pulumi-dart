// ignore_for_file: unused_element, unnecessary_cast


class GetCryptoKeyLatestVersionPublicKey {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;
  /// The public key, encoded in PEM format. For more information, see the RFC 7468 sections for General Considerations and Textual Encoding of Subject Public Key Info.
  final String pem;

  /// Creates a new [GetCryptoKeyLatestVersionPublicKey].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [pem] The public key, encoded in PEM format. For more information, see the RFC 7468 sections for General Considerations and Textual Encoding of Subject Public Key Info.
  GetCryptoKeyLatestVersionPublicKey({
    required this.algorithm,
    required this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'pem': pem,
    };
  }

  factory GetCryptoKeyLatestVersionPublicKey.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyLatestVersionPublicKey(
      algorithm: map['algorithm'] as String,
      pem: map['pem'] as String,
    );
  }
}

