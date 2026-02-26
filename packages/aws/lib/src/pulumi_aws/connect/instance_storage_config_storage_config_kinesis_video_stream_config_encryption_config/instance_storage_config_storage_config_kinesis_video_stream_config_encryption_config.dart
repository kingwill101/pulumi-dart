// ignore_for_file: unused_element, unnecessary_cast

class InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final String encryptionType;

  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final String keyId;

  InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['keyId'] = keyId;
    return map;
  }

  factory InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig(
      encryptionType: map['encryptionType'] as String,
      keyId: map['keyId'] as String,
    );
  }
}
