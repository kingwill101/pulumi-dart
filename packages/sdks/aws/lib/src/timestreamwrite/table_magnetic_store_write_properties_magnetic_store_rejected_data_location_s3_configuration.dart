// ignore_for_file: unused_element, unnecessary_cast


class TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration {
  /// Bucket name of the customer S3 bucket.
  final String? bucketName;
  /// Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key. Valid values are `SSE_KMS` and `SSE_S3`.
  final String? encryptionOption;
  /// KMS key arn for the customer s3 location when encrypting with a KMS managed key.
  final String? kmsKeyId;
  /// Object key prefix for the customer S3 location.
  final String? objectKeyPrefix;

  /// Creates a new [TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration].
  /// [bucketName] Bucket name of the customer S3 bucket.
  /// [encryptionOption] Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key. Valid values are `SSE_KMS` and `SSE_S3`.
  /// [kmsKeyId] KMS key arn for the customer s3 location when encrypting with a KMS managed key.
  /// [objectKeyPrefix] Object key prefix for the customer S3 location.
  TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration({
    this.bucketName,
    this.encryptionOption,
    this.kmsKeyId,
    this.objectKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'encryptionOption': ?encryptionOption,
      'kmsKeyId': ?kmsKeyId,
      'objectKeyPrefix': ?objectKeyPrefix,
    };
  }

  factory TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration.fromMap(Map<String, dynamic> map) {
    return TableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      encryptionOption: map['encryptionOption'] == null ? null : map['encryptionOption'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      objectKeyPrefix: map['objectKeyPrefix'] == null ? null : map['objectKeyPrefix'] as String,
    );
  }
}

