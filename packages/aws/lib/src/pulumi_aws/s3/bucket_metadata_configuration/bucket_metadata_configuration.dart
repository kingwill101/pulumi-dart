import 'package:pulumi/pulumi.dart';
import '../bucket_metadata_configuration_metadata_configuration/bucket_metadata_configuration_metadata_configuration.dart';
import '../bucket_metadata_configuration_timeouts/bucket_metadata_configuration_timeouts.dart';
import 'bucket_metadata_configuration_args.dart';

/// Manages Amazon S3 Metadata for a bucket.
///
/// ## Example Usage
///
/// ### Basic Usage
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
/// **Using `pulumi import` to import** S3 bucket metadata configuration using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration example bucket-name
/// ```
class BucketMetadataConfiguration extends CustomResource {
  /// General purpose bucket that you want to create the metadata configuration for.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Metadata configuration. See `metadata_configuration` Block for details.
  ///
  /// The following arguments are optional:
  late final Output<BucketMetadataConfigurationMetadataConfiguration>
      metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<BucketMetadataConfigurationTimeouts?> timeouts;

  BucketMetadataConfiguration(
    String name, {
    BucketMetadataConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.metadataConfiguration =
        registerOutput<BucketMetadataConfigurationMetadataConfiguration>(
            'metadataConfiguration');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<BucketMetadataConfigurationTimeouts?>('timeouts');
  }
}
