// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketPolicy resources.
class BucketPolicyState {
  /// Name of the bucket to which to apply the policy.
  final pulumi.Input<String>? bucket;

  /// Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketPolicyState].
  /// [bucket] Name of the bucket to which to apply the policy.
  /// [policy] Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketPolicyState({this.bucket, this.policy, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory BucketPolicyState.fromMap(Map<String, dynamic> map) {
    return BucketPolicyState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
