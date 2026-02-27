import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_replication_config_rule/bucket_replication_config_rule.dart';
import 'bucket_replication_config_args.dart';

/// Provides an independent configuration resource for S3 bucket [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html).
///
/// > **NOTE:** S3 Buckets only support a single replication configuration. Declaring multiple `aws.s3.BucketReplicationConfig` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Using replication configuration
///
/// ### Terraform AWS Provider v5 (and below)
///
///
///
/// ### Terraform AWS Provider v6 (and above)
///
///
///
/// ### Bi-Directional Replication
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket replication configuration using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketReplicationConfig:BucketReplicationConfig replication bucket-name
/// ```
class BucketReplicationConfig extends pulumi.CustomResource {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  late final pulumi.Output<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  late final pulumi.Output<String> role;

  /// List of configuration blocks describing the rules managing the replication. See below.
  ///
  /// > **NOTE:** Replication to multiple destination buckets requires that `priority` is specified in the `rule` object. If the corresponding rule requires no filter, an empty configuration block `filter {}` must be specified.
  ///
  /// > **NOTE:** Amazon S3's latest version of the replication configuration is V2, which includes the `filter` attribute for replication rules.
  ///
  /// > **NOTE:** The `existing_object_replication` parameter is not supported by Amazon S3 at this time and should not be included in your `rule` configurations. Specifying this parameter will result in `MalformedXML` errors.
  /// To replicate existing objects, please refer to the [Replicating existing objects with S3 Batch Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html) documentation in the Amazon S3 User Guide.
  late final pulumi.Output<List<BucketReplicationConfigRule>> rules;

  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token".
  /// For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  late final pulumi.Output<String?> token;

  BucketReplicationConfig(
    String name, {
    BucketReplicationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketReplicationConfig:BucketReplicationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rules = registerOutput<List<BucketReplicationConfigRule>>('rules');
    this.token = registerOutput<String?>('token');
  }
}
