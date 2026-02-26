// ignore_for_file: unused_element, unnecessary_cast

import '../instance_storage_config_storage_config_s3_config_encryption_config/instance_storage_config_storage_config_s3_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigS3Config {
  /// The S3 bucket name.
  final String bucketName;

  /// The S3 bucket prefix.
  final String bucketPrefix;

  /// The encryption configuration. Documented below.
  final InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig?
      encryptionConfig;

  InstanceStorageConfigStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    this.encryptionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketPrefix'] = bucketPrefix;
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    return map;
  }

  factory InstanceStorageConfigStorageConfigS3Config.fromMap(
      Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigS3Config(
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] as String,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
