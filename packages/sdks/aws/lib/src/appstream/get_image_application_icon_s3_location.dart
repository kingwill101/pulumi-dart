// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageApplicationIconS3Location {
  /// Name of the S3 bucket containing the icon.
  final pulumi.Input<String> s3Bucket;
  /// S3 key of the icon.
  final pulumi.Input<String> s3Key;

  /// Creates a new [GetImageApplicationIconS3Location].
  /// [s3Bucket] Name of the S3 bucket containing the icon.
  /// [s3Key] S3 key of the icon.
  const GetImageApplicationIconS3Location({
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
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
      s3Key: pulumi.Input.fromValue(map['s3Key'] as String),
    );
  }
}
