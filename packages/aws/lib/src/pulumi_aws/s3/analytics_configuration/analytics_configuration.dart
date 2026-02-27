import 'package:pulumi/pulumi.dart' as pulumi;
import '../analytics_configuration_filter/analytics_configuration_filter.dart';
import '../analytics_configuration_storage_class_analysis/analytics_configuration_storage_class_analysis.dart';
import 'analytics_configuration_args.dart';

/// Provides a S3 bucket [analytics configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html) resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add analytics configuration for entire S3 bucket and export results to a second S3 bucket
///
///
///
/// ### Add analytics configuration with S3 object filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket analytics configurations using `bucket:analytics`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/analyticsConfiguration:AnalyticsConfiguration my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class AnalyticsConfiguration extends pulumi.CustomResource {
  /// Name of the bucket this analytics configuration is associated with.
  late final pulumi.Output<String> bucket;

  /// Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  late final pulumi.Output<AnalyticsConfigurationFilter?> filter;

  /// Unique identifier of the analytics configuration for the bucket.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration for the analytics data export (documented below).
  late final pulumi.Output<AnalyticsConfigurationStorageClassAnalysis?>
      storageClassAnalysis;

  AnalyticsConfiguration(
    String name, {
    AnalyticsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/analyticsConfiguration:AnalyticsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.filter = registerOutput<AnalyticsConfigurationFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.storageClassAnalysis =
        registerOutput<AnalyticsConfigurationStorageClassAnalysis?>(
            'storageClassAnalysis');
  }
}
