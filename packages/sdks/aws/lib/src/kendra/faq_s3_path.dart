// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FaqS3Path {
  /// The name of the S3 bucket that contains the file.
  final pulumi.Input<String> bucket;

  /// The name of the file.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> key;

  /// Creates a new [FaqS3Path].
  /// [bucket] The name of the S3 bucket that contains the file.
  /// [key] The name of the file.
  FaqS3Path({required this.bucket, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'key': key};
  }

  factory FaqS3Path.fromMap(Map<String, dynamic> map) {
    return FaqS3Path(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
