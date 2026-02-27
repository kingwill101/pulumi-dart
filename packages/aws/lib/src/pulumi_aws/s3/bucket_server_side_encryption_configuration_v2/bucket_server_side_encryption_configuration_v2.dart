import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_server_side_encryption_configuration_v2_rule/bucket_server_side_encryption_configuration_v2_rule.dart';
import 'bucket_server_side_encryption_configuration_v2_args.dart';

/// Provides a S3 bucket server-side encryption configuration resource.
///
/// > **NOTE:** Destroying an `aws.s3.BucketServerSideEncryptionConfiguration` resource resets the bucket to [Amazon S3 bucket default encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-encryption-faq.html).
///
/// > **NOTE:** Starting in March 2026, Amazon S3 will automatically block server-side encryption with customer-provided keys (SSE-C) for all new buckets. Use the `blocked_encryption_types` argument to manage this behavior. For more information, see the [SSE-C changes FAQ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-s3-c-encryption-setting-faq.html).
///
/// ## Example Usage
///
///
///
/// ### Blocking SSE-C Uploads
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
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket server-side encryption configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2 example bucket-name,123456789012
/// ```
class BucketServerSideEncryptionConfigurationV2 extends pulumi.CustomResource {
  /// ID (name) of the bucket.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  late final pulumi.Output<List<BucketServerSideEncryptionConfigurationV2Rule>>
      rules;

  BucketServerSideEncryptionConfigurationV2(
    String name, {
    BucketServerSideEncryptionConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketServerSideEncryptionConfigurationV2Rule>>(
            'rules');
  }
}
