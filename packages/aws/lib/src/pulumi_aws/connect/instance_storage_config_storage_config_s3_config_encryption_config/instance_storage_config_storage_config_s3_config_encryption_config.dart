// ignore_for_file: unused_element, unnecessary_cast

class InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final String encryptionType;

  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final String keyId;

  InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['keyId'] = keyId;
    return map;
  }

  factory InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig(
      encryptionType: map['encryptionType'] as String,
      keyId: map['keyId'] as String,
    );
  }
}
