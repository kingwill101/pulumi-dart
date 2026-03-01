// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectCustomerEncryption {
  /// Encryption algorithm. Default: AES256
  final String? encryptionAlgorithm;

  /// Base64 encoded Customer-Supplied Encryption Key.
  final String encryptionKey;

  /// Creates a new [BucketObjectCustomerEncryption].
  /// [encryptionAlgorithm] Encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded Customer-Supplied Encryption Key.
  BucketObjectCustomerEncryption({
    this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'encryptionKey': encryptionKey,
    };
  }

  factory BucketObjectCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return BucketObjectCustomerEncryption(
      encryptionAlgorithm: map['encryptionAlgorithm'] == null
          ? null
          : map['encryptionAlgorithm'] as String,
      encryptionKey: map['encryptionKey'] as String,
    );
  }
}
