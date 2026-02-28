// ignore_for_file: unused_element, unnecessary_cast

class GetBucketObjectContentCustomerEncryption {
  /// The encryption algorithm. Default: AES256
  final String encryptionAlgorithm;

  /// Base64 encoded customer supplied encryption key.
  final String encryptionKey;

  /// Creates a new [GetBucketObjectContentCustomerEncryption].
  /// [encryptionAlgorithm] The encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded customer supplied encryption key.
  GetBucketObjectContentCustomerEncryption({
    required this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionAlgorithm'] = encryptionAlgorithm;
    map['encryptionKey'] = encryptionKey;
    return map;
  }

  factory GetBucketObjectContentCustomerEncryption.fromMap(
      Map<String, dynamic> map) {
    return GetBucketObjectContentCustomerEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      encryptionKey: map['encryptionKey'] as String,
    );
  }
}
