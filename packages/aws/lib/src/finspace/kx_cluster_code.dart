// ignore_for_file: unused_element, unnecessary_cast

class KxClusterCode {
  /// Unique name for the S3 bucket.
  final String s3Bucket;

  /// Full S3 path (excluding bucket) to the .zip file that contains the code to be loaded onto the cluster when it’s started.
  final String s3Key;

  /// Version of an S3 Object.
  final String? s3ObjectVersion;

  /// Creates a new [KxClusterCode].
  /// [s3Bucket] Unique name for the S3 bucket.
  /// [s3Key] Full S3 path (excluding bucket) to the .zip file that contains the code to be loaded onto the cluster when it’s started.
  /// [s3ObjectVersion] Version of an S3 Object.
  KxClusterCode({
    required this.s3Bucket,
    required this.s3Key,
    this.s3ObjectVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Bucket'] = s3Bucket;
    map['s3Key'] = s3Key;
    final s3ObjectVersionValue = s3ObjectVersion;
    if (s3ObjectVersionValue != null) {
      map['s3ObjectVersion'] = s3ObjectVersionValue;
    }
    return map;
  }

  factory KxClusterCode.fromMap(Map<String, dynamic> map) {
    return KxClusterCode(
      s3Bucket: map['s3Bucket'] as String,
      s3Key: map['s3Key'] as String,
      s3ObjectVersion: map['s3ObjectVersion'] == null
          ? null
          : map['s3ObjectVersion'] as String,
    );
  }
}
