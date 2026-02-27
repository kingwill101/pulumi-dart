import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_logging_v2_target_grant/bucket_logging_v2_target_grant.dart';
import '../bucket_logging_v2_target_object_key_format/bucket_logging_v2_target_object_key_format.dart';
import 'bucket_logging_v2_args.dart';

/// Provides an S3 bucket (server access) logging resource. For more information, see [Logging requests using server access logging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)
/// in the AWS S3 User Guide.
///
/// > **Note:** Amazon S3 supports server access logging, AWS CloudTrail, or a combination of both. Refer to the [Logging options for Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/logging-with-S3.html)
/// to decide which method meets your requirements.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Grant permission by using bucket policy
///
///
///
/// ### Grant permission by using bucket ACL
///
/// The [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html) does not recommend using the ACL.
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
/// **Using `pulumi import` to import** S3 bucket logging using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLoggingV2:BucketLoggingV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLoggingV2:BucketLoggingV2 example bucket-name,123456789012
/// ```
class BucketLoggingV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the bucket where you want Amazon S3 to store server access logs.
  late final pulumi.Output<String> targetBucket;

  /// Set of configuration blocks with information for granting permissions. See below.
  late final pulumi.Output<List<BucketLoggingV2TargetGrant>?> targetGrants;

  /// Amazon S3 key format for log objects. See below.
  late final pulumi.Output<BucketLoggingV2TargetObjectKeyFormat?>
      targetObjectKeyFormat;

  /// Prefix for all log object keys.
  late final pulumi.Output<String> targetPrefix;

  BucketLoggingV2(
    String name, {
    BucketLoggingV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLoggingV2:BucketLoggingV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.targetBucket = registerOutput<String>('targetBucket');
    this.targetGrants =
        registerOutput<List<BucketLoggingV2TargetGrant>?>('targetGrants');
    this.targetObjectKeyFormat =
        registerOutput<BucketLoggingV2TargetObjectKeyFormat?>(
            'targetObjectKeyFormat');
    this.targetPrefix = registerOutput<String>('targetPrefix');
  }
}
