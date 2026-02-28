// ignore_for_file: unused_element, unnecessary_cast

class GetImageApplicationIconS3Location {
  /// S3 bucket of the S3 object.
  final String s3Bucket;

  /// S3 key of the S3 object.
  final String s3Key;

  /// Creates a new [GetImageApplicationIconS3Location].
  /// [s3Bucket] S3 bucket of the S3 object.
  /// [s3Key] S3 key of the S3 object.
  GetImageApplicationIconS3Location({
    required this.s3Bucket,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Bucket'] = s3Bucket;
    map['s3Key'] = s3Key;
    return map;
  }

  factory GetImageApplicationIconS3Location.fromMap(Map<String, dynamic> map) {
    return GetImageApplicationIconS3Location(
      s3Bucket: map['s3Bucket'] as String,
      s3Key: map['s3Key'] as String,
    );
  }
}
