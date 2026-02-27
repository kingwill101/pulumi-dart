import 'package:pulumi/pulumi.dart';
import '../bucket_cors_configuration_cors_rule/bucket_cors_configuration_cors_rule.dart';
import 'bucket_cors_configuration_args.dart';

/// Provides an S3 bucket CORS configuration resource. For more information about CORS, go to [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html) in the Amazon S3 User Guide.
///
/// > **NOTE:** S3 Buckets only support a single CORS configuration. Declaring multiple `aws.s3.BucketCorsConfiguration` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
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
/// **Using `pulumi import` to import** S3 bucket CORS configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfiguration:BucketCorsConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfiguration:BucketCorsConfiguration example bucket-name,123456789012
/// ```
class BucketCorsConfiguration extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  late final Output<List<BucketCorsConfigurationCorsRule>> corsRules;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketCorsConfiguration(
    String name, {
    BucketCorsConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketCorsConfiguration:BucketCorsConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.corsRules =
        registerOutput<List<BucketCorsConfigurationCorsRule>>('corsRules');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
  }
}
