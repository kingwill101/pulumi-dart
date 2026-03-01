// ignore_for_file: unused_element, unnecessary_cast


class ImageImageEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud
  /// KMS.
  final String? kmsKeySelfLink;
  /// The service account being used for the encryption request for the
  /// given KMS key. If absent, the Compute Engine default service
  /// account is used.
  final String? kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? rawKey;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? rsaEncryptedKey;

  /// Creates a new [ImageImageEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  ImageImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
    };
  }

  factory ImageImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return ImageImageEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null ? null : map['rsaEncryptedKey'] as String,
    );
  }
}

