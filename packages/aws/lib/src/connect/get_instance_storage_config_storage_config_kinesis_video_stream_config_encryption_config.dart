// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig {
  /// The type of encryption. Valid Values: `KMS`.
  final String encryptionType;
  /// The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  final String keyId;

  /// Creates a new [GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig].
  /// [encryptionType] The type of encryption. Valid Values: `KMS`.
  /// [keyId] The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.
  GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'keyId': keyId,
    };
  }

  factory GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig(
      encryptionType: map['encryptionType'] as String,
      keyId: map['keyId'] as String,
    );
  }
}

