// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketPolicy.
class BucketPolicyArgs {
  /// Name of the bucket to which to apply the policy.
  final Input<String> bucket;

  /// Text of the policy. Although this is a bucket policy rather than an IAM policy, the <span pulumi-lang-nodejs="`aws.iam.getPolicyDocument`" pulumi-lang-dotnet="`aws.iam.getPolicyDocument`" pulumi-lang-go="`iam.getPolicyDocument`" pulumi-lang-python="`iam_get_policy_document`" pulumi-lang-yaml="`aws.iam.getPolicyDocument`" pulumi-lang-java="`aws.iam.getPolicyDocument`">`aws.iam.getPolicyDocument`</span> data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketPolicyArgs({
    required this.bucket,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyArgs(
      bucket: Input.asInput<String>(map['bucket']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
