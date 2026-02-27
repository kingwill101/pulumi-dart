import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_lifecycle_configuration_v2_rule/bucket_lifecycle_configuration_v2_rule.dart';
import '../bucket_lifecycle_configuration_v2_timeouts/bucket_lifecycle_configuration_v2_timeouts.dart';
import 'bucket_lifecycle_configuration_v2_args.dart';

/// Provides an independent configuration resource for S3 bucket [lifecycle configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).
///
/// An S3 Lifecycle configuration consists of one or more Lifecycle rules. Each rule consists of the following:
///
/// * Rule metadata (`id` and `status`)
/// * Filter identifying objects to which the rule applies
/// * One or more transition or expiration actions
///
/// For more information see the Amazon S3 User Guide on [`Lifecycle Configuration Elements`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html).
///
/// > S3 Buckets only support a single lifecycle configuration. Declaring multiple `aws.s3.BucketLifecycleConfiguration` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > Lifecycle configurations may take some time to fully propagate to all AWS S3 systems.
/// Running Pulumi operations shortly after creating a lifecycle configuration may result in changes that affect configuration idempotence.
/// See the Amazon S3 User Guide on [setting lifecycle configuration on a bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/how-to-set-lifecycle-configuration-intro.html).
///
/// ## Example Usage
///
/// ### With neither a filter nor prefix specified
///
/// When you don't specify a filter or prefix, the lifecycle rule applies to all objects in the bucket. This has the same effect as setting an empty `filter` element.
///
///
///
///
/// ### Specifying an empty filter
///
/// The Lifecycle rule applies to all objects in the bucket.
///
///
///
/// ### Specifying a filter using key prefixes
///
/// The Lifecycle rule applies to a subset of objects based on the key name prefix (`logs/`).
///
///
///
/// If you want to apply a Lifecycle action to a subset of objects based on different key name prefixes, specify separate rules.
///
///
///
/// ### Specifying a filter based on an object tag
///
/// The Lifecycle rule specifies a filter based on a tag key and value. The rule then applies only to a subset of objects with the specific tag.
///
///
///
/// ### Specifying a filter based on multiple tags
///
/// The Lifecycle rule directs Amazon S3 to perform lifecycle actions on objects with two tags (with the specific tag keys and values). Notice `tags` is wrapped in the `and` configuration block.
///
///
///
/// ### Specifying a filter based on both prefix and one or more tags
///
/// The Lifecycle rule directs Amazon S3 to perform lifecycle actions on objects with the specified prefix and two tags (with the specific tag keys and values). Notice both `prefix` and `tags` are wrapped in the `and` configuration block.
///
///
///
/// ### Specifying a filter based on object size
///
/// Object size values are in bytes. Maximum filter size is 5TB. Amazon S3 applies a default behavior to your Lifecycle configuration that prevents objects smaller than 128 KB from being transitioned to any storage class. You can allow smaller objects to transition by adding a minimum size (`object_size_greater_than`) or a maximum size (`object_size_less_than`) filter that specifies a smaller size to the configuration. This example allows any object smaller than 128 KB to transition to the S3 Glacier Instant Retrieval storage class:
///
///
///
/// ### Specifying a filter based on object size range and prefix
///
/// The `object_size_greater_than` must be less than the `object_size_less_than`. Notice both the object size range and prefix are wrapped in the `and` configuration block.
///
///
///
/// ### Creating a Lifecycle Configuration for a bucket with versioning
///
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import an S3 bucket lifecycle configuration using the `bucket` or the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2 example bucket-name,123456789012
/// ```
class BucketLifecycleConfigurationV2 extends pulumi.CustomResource {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  late final pulumi.Output<String> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of configuration blocks describing the rules managing the replication. See below.
  late final pulumi.Output<List<BucketLifecycleConfigurationV2Rule>?> rules;
  late final pulumi.Output<BucketLifecycleConfigurationV2Timeouts?> timeouts;

  /// The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  late final pulumi.Output<String> transitionDefaultMinimumObjectSize;

  BucketLifecycleConfigurationV2(
    String name, {
    BucketLifecycleConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketLifecycleConfigurationV2Rule>?>('rules');
    this.timeouts =
        registerOutput<BucketLifecycleConfigurationV2Timeouts?>('timeouts');
    this.transitionDefaultMinimumObjectSize =
        registerOutput<String>('transitionDefaultMinimumObjectSize');
  }
}
