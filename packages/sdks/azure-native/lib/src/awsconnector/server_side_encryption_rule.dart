// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_side_encryption_by_default.dart';

/// Definition of ServerSideEncryptionRule
class ServerSideEncryptionRule {
  /// Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the ``BucketKeyEnabled`` element to ``true`` causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket Key is not enabled. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<bool>? bucketKeyEnabled;
  /// Specifies the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an AWS KMS key in your AWS account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see [PUT Bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html) in the *Amazon S3 API Reference*.
  final pulumi.Input<ServerSideEncryptionByDefault>? serverSideEncryptionByDefault;

  /// Creates a new [ServerSideEncryptionRule].
  /// [bucketKeyEnabled] Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the ``BucketKeyEnabled`` element to ``true`` causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket Key is not enabled. For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the *Amazon S3 User Guide*.
  /// [serverSideEncryptionByDefault] Specifies the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an AWS KMS key in your AWS account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see [PUT Bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html) in the *Amazon S3 API Reference*.
  const ServerSideEncryptionRule({
    this.bucketKeyEnabled,
    this.serverSideEncryptionByDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketKeyEnabled': ?bucketKeyEnabled,
      'serverSideEncryptionByDefault': ?pulumi.Input.mapOptionalInputValue<ServerSideEncryptionByDefault, Map<String, dynamic>>(serverSideEncryptionByDefault, (value) => value.toMap()),
    };
  }

  factory ServerSideEncryptionRule.fromMap(Map<String, dynamic> map) {
    return ServerSideEncryptionRule(
      bucketKeyEnabled: (() { final guardedValue = map['bucketKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverSideEncryptionByDefault: (() { final guardedValue = map['serverSideEncryptionByDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerSideEncryptionByDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
