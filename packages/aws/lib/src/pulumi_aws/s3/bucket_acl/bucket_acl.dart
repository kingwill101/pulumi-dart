import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_acl_access_control_policy/bucket_acl_access_control_policy.dart';
import 'bucket_acl_args.dart';

/// Provides an S3 bucket ACL resource.
///
/// > **Note:** destroy does not delete the S3 Bucket ACL but does remove the resource from state.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With `private` ACL
///
///
///
/// ### With `public-read` ACL
///
/// > This example explicitly disables the default S3 bucket security settings. This
/// should be done with caution, as all bucket objects become publicly exposed.
///
///
///
/// ### With Grants
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket` and `acl` separated by a comma (`,`):
///
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **not configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket`, `expected_bucket_owner`, and `acl` separated by commas (`,`):
///
///
/// **Using `pulumi import` to import** using `bucket`, `expected_bucket_owner`, and/or `acl`, depending on your situation. For example:
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **not configured** with a
/// [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAcl:BucketAcl example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket is the _same_ account used to configure the AWS Provider, and the source bucket is **configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), import using the `bucket` and `acl` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAcl:BucketAcl example bucket-name,private
/// ```
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **not configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAcl:BucketAcl example bucket-name,123456789012
/// ```
///
/// If the owner (account ID) of the source bucket _differs_ from the account used to configure the AWS Provider, and the source bucket is **configured** with a [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl) (i.e. predefined grant), imported using the `bucket`, `expected_bucket_owner`, and `acl` separated by commas (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAcl:BucketAcl example bucket-name,123456789012,private
/// ```
///
/// [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl
class BucketAcl extends pulumi.CustomResource {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  late final pulumi.Output<BucketAclAccessControlPolicy> accessControlPolicy;

  /// Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  late final pulumi.Output<String?> acl;

  /// Bucket to which to apply the ACL.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BucketAcl(
    String name, {
    BucketAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAcl:BucketAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessControlPolicy =
        registerOutput<BucketAclAccessControlPolicy>('accessControlPolicy');
    this.acl = registerOutput<String?>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
  }
}
