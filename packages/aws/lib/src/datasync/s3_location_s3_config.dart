// ignore_for_file: unused_element, unnecessary_cast

class S3LocationS3Config {
  /// ARN of the IAM Role used to connect to the S3 Bucket.
  final String bucketAccessRoleArn;

  /// Creates a new [S3LocationS3Config].
  /// [bucketAccessRoleArn] ARN of the IAM Role used to connect to the S3 Bucket.
  S3LocationS3Config({required this.bucketAccessRoleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketAccessRoleArn': bucketAccessRoleArn};
  }

  factory S3LocationS3Config.fromMap(Map<String, dynamic> map) {
    return S3LocationS3Config(
      bucketAccessRoleArn: map['bucketAccessRoleArn'] as String,
    );
  }
}
