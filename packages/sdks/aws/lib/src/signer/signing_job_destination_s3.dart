// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningJobDestinationS3 {
  final pulumi.Input<String> bucket;
  /// An Amazon S3 object key prefix that you can use to limit signed objects keys to begin with the specified prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [SigningJobDestinationS3].
  /// [bucket] Required.
  /// [prefix] An Amazon S3 object key prefix that you can use to limit signed objects keys to begin with the specified prefix.
  const SigningJobDestinationS3({
    required this.bucket,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'prefix': ?prefix,
    };
  }

  factory SigningJobDestinationS3.fromMap(Map<String, dynamic> map) {
    return SigningJobDestinationS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
