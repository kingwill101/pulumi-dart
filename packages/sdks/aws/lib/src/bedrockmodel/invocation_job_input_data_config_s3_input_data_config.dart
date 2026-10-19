// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvocationJobInputDataConfigS3InputDataConfig {
  /// ID of the AWS account that owns the S3 bucket containing the input data.
  final pulumi.Input<String?>? s3BucketOwner;
  /// Format of the input data. Valid values: `JSONL`.
  final pulumi.Input<String?>? s3InputFormat;
  /// S3 location of the input data.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [InvocationJobInputDataConfigS3InputDataConfig].
  /// [s3BucketOwner] ID of the AWS account that owns the S3 bucket containing the input data.
  /// [s3InputFormat] Format of the input data. Valid values: `JSONL`.
  /// [s3Uri] S3 location of the input data.
  const InvocationJobInputDataConfigS3InputDataConfig({
    this.s3BucketOwner,
    this.s3InputFormat,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketOwner': ?s3BucketOwner,
      's3InputFormat': ?s3InputFormat,
      's3Uri': s3Uri,
    };
  }

  factory InvocationJobInputDataConfigS3InputDataConfig.fromMap(Map<String, dynamic> map) {
    return InvocationJobInputDataConfigS3InputDataConfig(
      s3BucketOwner: (() { final guardedValue = map['s3BucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3InputFormat: (() { final guardedValue = map['s3InputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
