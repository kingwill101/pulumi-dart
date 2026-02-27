import 'package:pulumi/pulumi.dart';
import '../bucket_intelligent_tiering_configuration_filter/bucket_intelligent_tiering_configuration_filter.dart';
import '../bucket_intelligent_tiering_configuration_tiering/bucket_intelligent_tiering_configuration_tiering.dart';
import 'bucket_intelligent_tiering_configuration_args.dart';

/// Provides an [S3 Intelligent-Tiering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering.html) configuration resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add intelligent tiering configuration for entire S3 bucket
///
///
///
/// ### Add intelligent tiering configuration with S3 object filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket intelligent tiering configurations using `bucket:name`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketIntelligentTieringConfiguration:BucketIntelligentTieringConfiguration my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class BucketIntelligentTieringConfiguration extends CustomResource {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  late final Output<String> bucket;

  /// Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  late final Output<BucketIntelligentTieringConfigurationFilter?> filter;

  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  late final Output<String?> status;

  /// S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  late final Output<List<BucketIntelligentTieringConfigurationTiering>>
      tierings;

  BucketIntelligentTieringConfiguration(
    String name, {
    BucketIntelligentTieringConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketIntelligentTieringConfiguration:BucketIntelligentTieringConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.filter =
        registerOutput<BucketIntelligentTieringConfigurationFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String?>('status');
    this.tierings =
        registerOutput<List<BucketIntelligentTieringConfigurationTiering>>(
            'tierings');
  }
}
