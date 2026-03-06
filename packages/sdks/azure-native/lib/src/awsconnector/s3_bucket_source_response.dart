// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of S3BucketSource
class S3BucketSourceResponse {
  /// The S3 bucket that is being imported from.
  final pulumi.Input<String>? s3Bucket;
  /// The account number of the S3 bucket that is being imported from. If the bucket is owned by the requester this is optional.
  final pulumi.Input<String>? s3BucketOwner;
  /// The key prefix shared by all S3 Objects that are being imported.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [S3BucketSourceResponse].
  /// [s3Bucket] The S3 bucket that is being imported from.
  /// [s3BucketOwner] The account number of the S3 bucket that is being imported from. If the bucket is owned by the requester this is optional.
  /// [s3KeyPrefix] The key prefix shared by all S3 Objects that are being imported.
  const S3BucketSourceResponse({
    this.s3Bucket,
    this.s3BucketOwner,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Bucket': ?s3Bucket,
      's3BucketOwner': ?s3BucketOwner,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory S3BucketSourceResponse.fromMap(Map<String, dynamic> map) {
    return S3BucketSourceResponse(
      s3Bucket: (() { final guardedValue = map['s3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketOwner: (() { final guardedValue = map['s3BucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

