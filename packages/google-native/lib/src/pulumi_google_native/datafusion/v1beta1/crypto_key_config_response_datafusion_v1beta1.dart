// ignore_for_file: unused_element, unnecessary_cast

/// The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfigResponseDatafusionV1beta1 {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String keyReference;

  CryptoKeyConfigResponseDatafusionV1beta1({
    required this.keyReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyReference'] = keyReference;
    return map;
  }

  factory CryptoKeyConfigResponseDatafusionV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CryptoKeyConfigResponseDatafusionV1beta1(
      keyReference: map['keyReference'] as String,
    );
  }
}
