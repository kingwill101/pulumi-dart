import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_metric_filter/bucket_metric_filter.dart';
import 'bucket_metric_args.dart';

/// Provides a S3 bucket [metrics configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html) resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add metrics configuration for entire S3 bucket
///
///
///
/// ### Add metrics configuration with S3 object filter
///
///
///
/// ### Add metrics configuration with S3 object filter for S3 Access Point
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket metric configurations using `bucket:metric`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketMetric:BucketMetric my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class BucketMetric extends pulumi.CustomResource {
  /// Name of the bucket to put metric configuration.
  late final pulumi.Output<String> bucket;

  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  late final pulumi.Output<BucketMetricFilter?> filter;

  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BucketMetric(
    String name, {
    BucketMetricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetric:BucketMetric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.filter = registerOutput<BucketMetricFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
