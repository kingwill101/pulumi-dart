// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvocationJobOutputDataConfigS3OutputDataConfig {
  /// ID of the AWS account that owns the S3 bucket containing the output data.
  final pulumi.Input<String?>? s3BucketOwner;
  /// ARN of the KMS key that encrypts the S3 location of the output data.
  final pulumi.Input<String?>? s3EncryptionKeyId;
  /// S3 location where the results of the batch inference job are stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [InvocationJobOutputDataConfigS3OutputDataConfig].
  /// [s3BucketOwner] ID of the AWS account that owns the S3 bucket containing the output data.
  /// [s3EncryptionKeyId] ARN of the KMS key that encrypts the S3 location of the output data.
  /// [s3Uri] S3 location where the results of the batch inference job are stored.
  const InvocationJobOutputDataConfigS3OutputDataConfig({
    this.s3BucketOwner,
    this.s3EncryptionKeyId,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketOwner': ?s3BucketOwner,
      's3EncryptionKeyId': ?s3EncryptionKeyId,
      's3Uri': s3Uri,
    };
  }

  factory InvocationJobOutputDataConfigS3OutputDataConfig.fromMap(Map<String, dynamic> map) {
    return InvocationJobOutputDataConfigS3OutputDataConfig(
      s3BucketOwner: (() { final guardedValue = map['s3BucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3EncryptionKeyId: (() { final guardedValue = map['s3EncryptionKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
