// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_storage_config_storage_config_s3_config_encryption_config/get_instance_storage_config_storage_config_s3_config_encryption_config.dart';

class GetInstanceStorageConfigStorageConfigS3Config {
  /// The S3 bucket name.
  final String bucketName;

  /// The S3 bucket prefix.
  final String bucketPrefix;

  /// The encryption configuration. Documented below.
  final List<GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig>
      encryptionConfigs;

  GetInstanceStorageConfigStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    required this.encryptionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketPrefix'] = bucketPrefix;
    map['encryptionConfigs'] = pulumi.Input.encodeList<
        GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig,
        Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap());
    return map;
  }

  factory GetInstanceStorageConfigStorageConfigS3Config.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigS3Config(
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] as String,
      encryptionConfigs: pulumi.Input.decodeList<
              GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig>(
          map['encryptionConfigs'],
          (value) =>
              GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
