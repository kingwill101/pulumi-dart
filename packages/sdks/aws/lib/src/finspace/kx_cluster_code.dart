// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterCode {
  /// Unique name for the S3 bucket.
  final pulumi.Input<String> s3Bucket;
  /// Full S3 path (excluding bucket) to the .zip file that contains the code to be loaded onto the cluster when it’s started.
  final pulumi.Input<String> s3Key;
  /// Version of an S3 Object.
  final pulumi.Input<String>? s3ObjectVersion;

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
    return <String, dynamic>{
      's3Bucket': s3Bucket,
      's3Key': s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
    };
  }

  factory KxClusterCode.fromMap(Map<String, dynamic> map) {
    return KxClusterCode(
      s3Bucket: (map['s3Bucket'] as String).input(),
      s3Key: (map['s3Key'] as String).input(),
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : (map['s3ObjectVersion'] as String).input(),
    );
  }
}

