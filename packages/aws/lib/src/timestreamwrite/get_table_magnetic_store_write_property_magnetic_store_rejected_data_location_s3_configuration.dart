// ignore_for_file: unused_element, unnecessary_cast

class GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration {
  /// Name of S3 bucket.
  final String bucketName;
  final String encryptionOption;

  /// AWS KMS key ID for S3 location with AWS maanged key.
  final String kmsKeyId;

  /// Object key preview for S3 location.
  final String objectKeyPrefix;

  /// Creates a new [GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration].
  /// [bucketName] Name of S3 bucket.
  /// [encryptionOption] Required.
  /// [kmsKeyId] AWS KMS key ID for S3 location with AWS maanged key.
  /// [objectKeyPrefix] Object key preview for S3 location.
  GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration({
    required this.bucketName,
    required this.encryptionOption,
    required this.kmsKeyId,
    required this.objectKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['encryptionOption'] = encryptionOption;
    map['kmsKeyId'] = kmsKeyId;
    map['objectKeyPrefix'] = objectKeyPrefix;
    return map;
  }

  factory GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return GetTableMagneticStoreWritePropertyMagneticStoreRejectedDataLocationS3Configuration(
      bucketName: map['bucketName'] as String,
      encryptionOption: map['encryptionOption'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      objectKeyPrefix: map['objectKeyPrefix'] as String,
    );
  }
}
