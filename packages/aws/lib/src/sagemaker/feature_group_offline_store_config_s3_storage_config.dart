// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupOfflineStoreConfigS3StorageConfig {
  /// The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the OfflineStore S3 location.
  final String? kmsKeyId;

  /// The S3 path where offline records are written.
  final String? resolvedOutputS3Uri;

  /// The S3 URI, or location in Amazon S3, of OfflineStore.
  final String s3Uri;

  /// Creates a new [FeatureGroupOfflineStoreConfigS3StorageConfig].
  /// [kmsKeyId] The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the OfflineStore S3 location.
  /// [resolvedOutputS3Uri] The S3 path where offline records are written.
  /// [s3Uri] The S3 URI, or location in Amazon S3, of OfflineStore.
  FeatureGroupOfflineStoreConfigS3StorageConfig({
    this.kmsKeyId,
    this.resolvedOutputS3Uri,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final resolvedOutputS3UriValue = resolvedOutputS3Uri;
    if (resolvedOutputS3UriValue != null) {
      map['resolvedOutputS3Uri'] = resolvedOutputS3UriValue;
    }
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory FeatureGroupOfflineStoreConfigS3StorageConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureGroupOfflineStoreConfigS3StorageConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      resolvedOutputS3Uri: map['resolvedOutputS3Uri'] == null
          ? null
          : map['resolvedOutputS3Uri'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
