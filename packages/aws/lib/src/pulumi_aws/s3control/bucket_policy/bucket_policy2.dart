import 'package:pulumi/pulumi.dart';
import 'bucket_policy_args2.dart';

/// Provides a resource to manage an S3 Control Bucket Policy.
///
/// > This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Policies in an AWS Partition, see the `aws.s3.BucketPolicy` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Control Bucket Policies using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucketPolicy:BucketPolicy example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketPolicy2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the bucket.
  late final Output<String> bucket;

  /// JSON string of the resource policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketPolicy2(
    String name, {
    BucketPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketPolicy:BucketPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
