import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_abac_abac_status/bucket_abac_abac_status.dart';
import 'bucket_abac_args.dart';

/// Manages ABAC (Attribute Based Access Control) for an AWS S3 (Simple Storage) Bucket.
/// See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging-enable-abac.html) on enabling ABAC for general purpose buckets for additional information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import S3 (Simple Storage) Bucket ABAC using the `bucket` or `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the Terraform AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name,123456789012
/// ```
class BucketAbac extends pulumi.CustomResource {
  /// ABAC status configuration. See `abac_status` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<BucketAbacAbacStatus> abacStatus;

  /// General purpose bucket that you want to create the metadata configuration for.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BucketAbac(
    String name, {
    BucketAbacArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAbac:BucketAbac',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abacStatus = registerOutput<BucketAbacAbacStatus>('abacStatus');
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
  }
}
