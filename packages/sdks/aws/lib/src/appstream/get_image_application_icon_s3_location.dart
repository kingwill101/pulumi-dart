// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageApplicationIconS3Location {
  /// S3 bucket of the S3 object.
  final pulumi.Input<String> s3Bucket;
  /// S3 key of the S3 object.
  final pulumi.Input<String> s3Key;

  /// Creates a new [GetImageApplicationIconS3Location].
  /// [s3Bucket] S3 bucket of the S3 object.
  /// [s3Key] S3 key of the S3 object.
  GetImageApplicationIconS3Location({
    required this.s3Bucket,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Bucket': s3Bucket,
      's3Key': s3Key,
    };
  }

  factory GetImageApplicationIconS3Location.fromMap(Map<String, dynamic> map) {
    return GetImageApplicationIconS3Location(
      s3Bucket: (map['s3Bucket'] as String).input(),
      s3Key: (map['s3Key'] as String).input(),
    );
  }
}

