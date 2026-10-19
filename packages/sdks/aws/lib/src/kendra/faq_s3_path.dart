// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FaqS3Path {
  /// Name of the S3 bucket that contains the file.
  final pulumi.Input<String> bucket;
  /// Name of the file.
  final pulumi.Input<String> key;

  /// Creates a new [FaqS3Path].
  /// [bucket] Name of the S3 bucket that contains the file.
  /// [key] Name of the file.
  const FaqS3Path({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
    };
  }

  factory FaqS3Path.fromMap(Map<String, dynamic> map) {
    return FaqS3Path(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
