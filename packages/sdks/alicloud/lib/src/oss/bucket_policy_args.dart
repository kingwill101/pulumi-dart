// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_policy_bucket_policy_args_doc}
/// The set of arguments for BucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_policy_bucket_policy_args_doc}
class BucketPolicyArgs {
  /// The name of the Bucket.
  final pulumi.Input<String> bucket;

  /// Json-formatted authorization policies for buckets.
  final pulumi.Input<String> policy;

  /// Creates a new [BucketPolicyArgs].
  /// [bucket] The name of the Bucket.
  /// [policy] Json-formatted authorization policies for buckets.
  BucketPolicyArgs({required this.bucket, required this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'policy': policy};
  }

  factory BucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
