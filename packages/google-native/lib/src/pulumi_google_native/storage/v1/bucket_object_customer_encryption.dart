// ignore_for_file: unused_element, unnecessary_cast

/// Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
class BucketObjectCustomerEncryption {
  /// The encryption algorithm.
  final String? encryptionAlgorithm;

  /// SHA256 hash value of the encryption key.
  final String? keySha256;

  BucketObjectCustomerEncryption({
    this.encryptionAlgorithm,
    this.keySha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionAlgorithmValue = encryptionAlgorithm;
    if (encryptionAlgorithmValue != null) {
      map['encryptionAlgorithm'] = encryptionAlgorithmValue;
    }
    final keySha256Value = keySha256;
    if (keySha256Value != null) {
      map['keySha256'] = keySha256Value;
    }
    return map;
  }

  factory BucketObjectCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return BucketObjectCustomerEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] == null
          ? null
          : map['encryptionAlgorithm'] as String,
      keySha256: map['keySha256'] == null ? null : map['keySha256'] as String,
    );
  }
}
