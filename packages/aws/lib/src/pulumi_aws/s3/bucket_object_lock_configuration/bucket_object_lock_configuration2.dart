import 'package:pulumi/pulumi.dart';
import '../bucket_object_lock_configuration_rule/bucket_object_lock_configuration_rule.dart';
import 'bucket_object_lock_configuration_args.dart';

/// Provides an S3 bucket Object Lock configuration resource. For more information about Object Locking, go to [Using S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the Amazon S3 User Guide.
///
/// > This resource can be used enable Object Lock for **new** and **existing** buckets.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Object Lock configuration for new or existing buckets
///
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner`, separated by a comma (`,`). For example:
///
///
/// **Using `pulumi import`**, import an S3 bucket Object Lock Configuration using one of two forms. If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name,123456789012
/// ```
class BucketObjectLockConfiguration2 extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  late final Output<String?> objectLockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  late final Output<BucketObjectLockConfigurationRule?> rule;

  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the `aws.s3.BucketVersioning` resource.
  late final Output<String?> token;

  BucketObjectLockConfiguration2(
    String name, {
    BucketObjectLockConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.objectLockEnabled = registerOutput<String?>('objectLockEnabled');
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<BucketObjectLockConfigurationRule?>('rule');
    this.token = registerOutput<String?>('token');
  }
}
