import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_public_access_block_args.dart';

/// Manages S3 bucket-level Public Access Block configuration. For more information about these settings, see the [AWS S3 Block Public Access documentation](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).
///
/// > This resource cannot be used with S3 directory buckets.
///
/// > Setting `skip_destroy` to `true` means that the AWS Provider will not destroy a public access block, even when running `terraform destroy`. The configuration is thus an intentional dangling resource that is not managed by Terraform and will remain in-place in your AWS account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.s3.BucketPublicAccessBlock` using the bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketPublicAccessBlock:BucketPublicAccessBlock example my-bucket
/// ```
class BucketPublicAccessBlock extends pulumi.CustomResource {
  /// Whether Amazon S3 should block public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket ACL and PUT Object ACL calls will fail if the specified ACL allows public access.
  /// * PUT Object calls will fail if the request includes an object ACL.
  late final pulumi.Output<bool?> blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the existing bucket policy. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  late final pulumi.Output<bool?> blockPublicPolicy;

  /// S3 Bucket to which this Public Access Block configuration should be applied.
  late final pulumi.Output<String> bucket;

  /// Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore public ACLs on this bucket and any objects that it contains.
  late final pulumi.Output<bool?> ignorePublicAcls;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the previously stored bucket policy, except that public and cross-account access within the public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access this buckets if it has a public policy.
  late final pulumi.Output<bool?> restrictPublicBuckets;

  /// Whether to retain the public access block upon destruction. If set to `true`, the resource is simply removed from state instead. This may be desirable in certain scenarios to prevent the removal of a public access block before deletion of the associated bucket.
  late final pulumi.Output<bool?> skipDestroy;

  BucketPublicAccessBlock(
    String name, {
    BucketPublicAccessBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketPublicAccessBlock:BucketPublicAccessBlock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockPublicAcls = registerOutput<bool?>('blockPublicAcls');
    this.blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    this.bucket = registerOutput<String>('bucket');
    this.ignorePublicAcls = registerOutput<bool?>('ignorePublicAcls');
    this.region = registerOutput<String>('region');
    this.restrictPublicBuckets = registerOutput<bool?>('restrictPublicBuckets');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}
