// ignore_for_file: unused_element, unnecessary_cast


/// Definition of S3BucketSource
class S3BucketSource {
  /// The S3 bucket that is being imported from.
  final String? s3Bucket;
  /// The account number of the S3 bucket that is being imported from. If the bucket is owned by the requester this is optional.
  final String? s3BucketOwner;
  /// The key prefix shared by all S3 Objects that are being imported.
  final String? s3KeyPrefix;

  /// Creates a new [S3BucketSource].
  /// [s3Bucket] The S3 bucket that is being imported from.
  /// [s3BucketOwner] The account number of the S3 bucket that is being imported from. If the bucket is owned by the requester this is optional.
  /// [s3KeyPrefix] The key prefix shared by all S3 Objects that are being imported.
  S3BucketSource({
    this.s3Bucket,
    this.s3BucketOwner,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Bucket': ?s3Bucket,
      's3BucketOwner': ?s3BucketOwner,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory S3BucketSource.fromMap(Map<String, dynamic> map) {
    return S3BucketSource(
      s3Bucket: map['s3Bucket'] == null ? null : map['s3Bucket'] as String,
      s3BucketOwner: map['s3BucketOwner'] == null ? null : map['s3BucketOwner'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
    );
  }
}

