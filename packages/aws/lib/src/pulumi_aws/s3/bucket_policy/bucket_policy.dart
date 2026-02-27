import 'package:pulumi/pulumi.dart';
import 'bucket_policy_args.dart';

/// Attaches a policy to an S3 bucket resource.
///
/// > Policies can be attached to both S3 general purpose buckets and S3 directory buckets.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// > Only one `aws.s3.BucketPolicy` resource should be defined per S3 bucket. Defining multiple `aws.s3.BucketPolicy` resources with different Pulumi names but the same `bucket` value may result in unexpected policy overwrites. Each resource uses the `PutBucketPolicy` API, which replaces the entire existing policy without error or warning. Because Pulumi treats each resource independently, the policy applied last will silently override any previously applied policy.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the S3 bucket.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket policies using the bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketPolicy:BucketPolicy example my-tf-test-bucket
/// ```
class BucketPolicy extends CustomResource {
  /// Name of the bucket to which to apply the policy.
  late final Output<String> bucket;

  /// Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketPolicy(
    String name, {
    BucketPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketPolicy:BucketPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
