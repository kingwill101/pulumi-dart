// ignore_for_file: unused_element, unnecessary_cast

class ConnectionCryptoKeyConfig {
  /// Required. The name of the key which is used to encrypt/decrypt customer data. For key
  /// in Cloud KMS, the key should be in the format of
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String keyReference;

  /// Creates a new [ConnectionCryptoKeyConfig].
  /// [keyReference] Required. The name of the key which is used to encrypt/decrypt customer data. For key
  ConnectionCryptoKeyConfig({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyReference'] = keyReference;
    return map;
  }

  factory ConnectionCryptoKeyConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionCryptoKeyConfig(
      keyReference: map['keyReference'] as String,
    );
  }
}
