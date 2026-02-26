// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final String encryptionType;

  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final String keyId;

  GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['keyId'] = keyId;
    return map;
  }

  factory GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig(
      encryptionType: map['encryptionType'] as String,
      keyId: map['keyId'] as String,
    );
  }
}
