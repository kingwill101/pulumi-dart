// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_policy_get_bucket_policy_args_doc}
/// Arguments for getBucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_policy_get_bucket_policy_args_doc}
class GetBucketPolicyArgs {
  /// Bucket name.
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBucketPolicyArgs].
  /// [bucket] Bucket name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBucketPolicyArgs({
    required this.bucket,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
    };
  }

  factory GetBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
