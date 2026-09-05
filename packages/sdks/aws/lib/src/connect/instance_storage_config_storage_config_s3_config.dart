// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_storage_config_s3_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigS3Config {
  /// The S3 bucket name.
  final pulumi.Input<String> bucketName;
  /// The S3 bucket prefix.
  final pulumi.Input<String> bucketPrefix;
  /// The encryption configuration. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig?>? encryptionConfig;

  /// Creates a new [InstanceStorageConfigStorageConfigS3Config].
  /// [bucketName] The S3 bucket name.
  /// [bucketPrefix] The S3 bucket prefix.
  /// [encryptionConfig] The encryption configuration. Documented below.
  const InstanceStorageConfigStorageConfigS3Config({
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
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: pulumi.Input.fromValue(map['bucketPrefix'] as String),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
