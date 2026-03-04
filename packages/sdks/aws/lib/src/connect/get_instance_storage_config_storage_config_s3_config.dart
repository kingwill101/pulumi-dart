// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config_s3_config_encryption_config.dart';

class GetInstanceStorageConfigStorageConfigS3Config {
  /// The S3 bucket name.
  final pulumi.Input<String> bucketName;

  /// The S3 bucket prefix.
  final pulumi.Input<String> bucketPrefix;

  /// The encryption configuration. Documented below.
  final pulumi.Input<
    List<GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig>
  >
  encryptionConfigs;

  /// Creates a new [GetInstanceStorageConfigStorageConfigS3Config].
  /// [bucketName] The S3 bucket name.
  /// [bucketPrefix] The S3 bucket prefix.
  /// [encryptionConfigs] The encryption configuration. Documented below.
  GetInstanceStorageConfigStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    required this.encryptionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': bucketPrefix,
      'encryptionConfigs':
          pulumi.Input.mapInputValue<
            List<GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig>,
            List<Map<String, dynamic>>
          >(
            encryptionConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceStorageConfigStorageConfigS3Config.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceStorageConfigStorageConfigS3Config(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: pulumi.Input.fromValue(map['bucketPrefix'] as String),
      encryptionConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig
        >(
          map['encryptionConfigs']!,
          (value) =>
              GetInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
