// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration {
  /// Name of S3 bucket.
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String> encryptionOption;
  /// AWS KMS key ID for S3 location with AWS maanged key.
  final pulumi.Input<String> kmsKeyId;
  /// Object key preview for S3 location.
  final pulumi.Input<String> objectKeyPrefix;

  /// Creates a new [GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration].
  /// [bucketName] Name of S3 bucket.
  /// [encryptionOption] Required.
  /// [kmsKeyId] AWS KMS key ID for S3 location with AWS maanged key.
  /// [objectKeyPrefix] Object key preview for S3 location.
  const GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration({
    required this.bucketName,
    required this.encryptionOption,
    required this.kmsKeyId,
    required this.objectKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'encryptionOption': encryptionOption,
      'kmsKeyId': kmsKeyId,
      'objectKeyPrefix': objectKeyPrefix,
    };
  }

  factory GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration.fromMap(Map<String, dynamic> map) {
    return GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      encryptionOption: pulumi.Input.fromValue(map['encryptionOption'] as String),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      objectKeyPrefix: pulumi.Input.fromValue(map['objectKeyPrefix'] as String),
    );
  }
}
