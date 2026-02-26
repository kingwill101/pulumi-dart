// ignore_for_file: unused_element, unnecessary_cast

/// The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
class CryptoKeyConfig2 {
  /// The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KMS, the key should be in the format of `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String? keyReference;

  CryptoKeyConfig2({
    this.keyReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyReferenceValue = keyReference;
    if (keyReferenceValue != null) {
      map['keyReference'] = keyReferenceValue;
    }
    return map;
  }

  factory CryptoKeyConfig2.fromMap(Map<String, dynamic> map) {
    return CryptoKeyConfig2(
      keyReference:
          map['keyReference'] == null ? null : map['keyReference'] as String,
    );
  }
}
