import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_request_payment_configuration_v2_args.dart';

/// Provides an S3 bucket request payment configuration resource. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
///
/// > **NOTE:** Destroying an `aws.s3.BucketRequestPaymentConfiguration` resource resets the bucket's `payer` to the S3 default: the bucket owner.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket request payment configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfigurationV2:BucketRequestPaymentConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfigurationV2:BucketRequestPaymentConfigurationV2 example bucket-name,123456789012
/// ```
class BucketRequestPaymentConfigurationV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  late final pulumi.Output<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BucketRequestPaymentConfigurationV2(
    String name, {
    BucketRequestPaymentConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketRequestPaymentConfigurationV2:BucketRequestPaymentConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.payer = registerOutput<String>('payer');
    this.region = registerOutput<String>('region');
  }
}
