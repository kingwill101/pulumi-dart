// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupOfflineStoreConfigS3StorageConfig {
  /// The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the OfflineStore S3 location.
  final pulumi.Input<String>? kmsKeyId;
  /// The S3 path where offline records are written.
  final pulumi.Input<String>? resolvedOutputS3Uri;
  /// The S3 URI, or location in Amazon S3, of OfflineStore.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [FeatureGroupOfflineStoreConfigS3StorageConfig].
  /// [kmsKeyId] The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the OfflineStore S3 location.
  /// [resolvedOutputS3Uri] The S3 path where offline records are written.
  /// [s3Uri] The S3 URI, or location in Amazon S3, of OfflineStore.
  const FeatureGroupOfflineStoreConfigS3StorageConfig({
    this.kmsKeyId,
    this.resolvedOutputS3Uri,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'resolvedOutputS3Uri': ?resolvedOutputS3Uri,
      's3Uri': s3Uri,
    };
  }

  factory FeatureGroupOfflineStoreConfigS3StorageConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOfflineStoreConfigS3StorageConfig(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolvedOutputS3Uri: (() { final guardedValue = map['resolvedOutputS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
