// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_storage_config_s3_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigS3Config {
  /// The S3 bucket name.
  final pulumi.Input<String> bucketName;
  /// The S3 bucket prefix.
  final pulumi.Input<String> bucketPrefix;
  /// The encryption configuration. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig>? encryptionConfig;

  /// Creates a new [InstanceStorageConfigStorageConfigS3Config].
  /// [bucketName] The S3 bucket name.
  /// [bucketPrefix] The S3 bucket prefix.
  /// [encryptionConfig] The encryption configuration. Documented below.
  InstanceStorageConfigStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    this.encryptionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': bucketPrefix,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
    };
  }

  factory InstanceStorageConfigStorageConfigS3Config.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigS3Config(
      bucketName: (map['bucketName'] as String).input(),
      bucketPrefix: (map['bucketPrefix'] as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

