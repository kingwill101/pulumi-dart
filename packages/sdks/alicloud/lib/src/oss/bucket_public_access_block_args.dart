// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_public_access_block_bucket_public_access_block_args_doc}
/// The set of arguments for BucketPublicAccessBlock.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_public_access_block_bucket_public_access_block_args_doc}
class BucketPublicAccessBlockArgs {
  /// Whether AlibabaCloud OSS should block public bucket policies and ACL for this bucket.
  final pulumi.Input<bool> blockPublicAccess;
  /// The name of the bucket.
  final pulumi.Input<String> bucket;

  /// Creates a new [BucketPublicAccessBlockArgs].
  /// [blockPublicAccess] Whether AlibabaCloud OSS should block public bucket policies and ACL for this bucket.
  /// [bucket] The name of the bucket.
  BucketPublicAccessBlockArgs({
    required pulumi.Output<bool> blockPublicAccess,
    required pulumi.Output<String> bucket,
  }) :
      blockPublicAccess = pulumi.Input.asInput<bool>(blockPublicAccess),
      bucket = pulumi.Input.asInput<String>(bucket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': blockPublicAccess,
      'bucket': bucket,
    };
  }

  factory BucketPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return BucketPublicAccessBlockArgs(
      blockPublicAccess: pulumi.Output.create<bool>(map['blockPublicAccess'] as bool),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
    );
  }
}

