// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningJobSourceS3 {
  final pulumi.Input<String> bucket;

  /// Key name of the object that contains your unsigned code.
  final pulumi.Input<String> key;

  /// Version of your source image in your version enabled S3 bucket.
  final pulumi.Input<String> version;

  /// Creates a new [SigningJobSourceS3].
  /// [bucket] Required.
  /// [key] Key name of the object that contains your unsigned code.
  /// [version] Version of your source image in your version enabled S3 bucket.
  SigningJobSourceS3({
    required this.bucket,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'key': key, 'version': version};
  }

  factory SigningJobSourceS3.fromMap(Map<String, dynamic> map) {
    return SigningJobSourceS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
