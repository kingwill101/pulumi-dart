import 'package:pulumi/pulumi.dart';
import 'vectors_vector_bucket_policy_args.dart';

/// Resource for managing an Amazon S3 Vectors Vector Bucket policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Vector Bucket policy using the `vector_bucket_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsVectorBucketPolicy:VectorsVectorBucketPolicy example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket
/// ```
class VectorsVectorBucketPolicy extends CustomResource {
  /// The policy document.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the vector bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> vectorBucketArn;

  VectorsVectorBucketPolicy(
    String name, {
    VectorsVectorBucketPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsVectorBucketPolicy:VectorsVectorBucketPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.vectorBucketArn = registerOutput<String>('vectorBucketArn');
  }
}
