// ignore_for_file: unused_element, unnecessary_cast

class InstanceCryptoKeyConfig {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final String keyReference;

  InstanceCryptoKeyConfig({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyReference'] = keyReference;
    return map;
  }

  factory InstanceCryptoKeyConfig.fromMap(Map<String, dynamic> map) {
    return InstanceCryptoKeyConfig(
      keyReference: map['keyReference'] as String,
    );
  }
}
