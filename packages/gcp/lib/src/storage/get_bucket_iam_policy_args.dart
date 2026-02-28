// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_iam_policy_get_bucket_iam_policy_args_doc}
/// Arguments for getBucketIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_iam_policy_get_bucket_iam_policy_args_doc}
class GetBucketIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;

  /// Creates a new [GetBucketIamPolicyArgs].
  /// [bucket] Used to find the parent resource to bind the IAM policy to
  GetBucketIamPolicyArgs({
    required String bucket,
  }) : bucket = pulumi.Input.asInput<String>(bucket);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory GetBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyArgs(
      bucket: map['bucket'] as String,
    );
  }
}
