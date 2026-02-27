import 'package:pulumi/pulumi.dart';
import '../bucket_ownership_controls_rule/bucket_ownership_controls_rule.dart';
import 'bucket_ownership_controls_args.dart';

/// Provides a resource to manage S3 Bucket Ownership Controls. For more information, see the [S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Bucket Ownership Controls using S3 Bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketOwnershipControls:BucketOwnershipControls example my-bucket
/// ```
class BucketOwnershipControls extends CustomResource {
  /// Name of the bucket that you want to associate this access point with.
  late final Output<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block(s) with Ownership Controls rules. Detailed below.
  late final Output<BucketOwnershipControlsRule> rule;

  BucketOwnershipControls(
    String name, {
    BucketOwnershipControlsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketOwnershipControls:BucketOwnershipControls',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<BucketOwnershipControlsRule>('rule');
  }
}
