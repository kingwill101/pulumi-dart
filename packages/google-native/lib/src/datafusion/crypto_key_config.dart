// ignore_for_file: unused_element, unnecessary_cast

/// The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfig {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String? keyReference;

  /// Creates a new [CryptoKeyConfig].
  /// [keyReference] The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  CryptoKeyConfig({this.keyReference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyReference': ?keyReference};
  }

  factory CryptoKeyConfig.fromMap(Map<String, dynamic> map) {
    return CryptoKeyConfig(
      keyReference: map['keyReference'] == null
          ? null
          : map['keyReference'] as String,
    );
  }
}
