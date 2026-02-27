import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_website_configuration_v2_error_document/bucket_website_configuration_v2_error_document.dart';
import '../bucket_website_configuration_v2_index_document/bucket_website_configuration_v2_index_document.dart';
import '../bucket_website_configuration_v2_redirect_all_requests_to/bucket_website_configuration_v2_redirect_all_requests_to.dart';
import '../bucket_website_configuration_v2_routing_rule/bucket_website_configuration_v2_routing_rule.dart';
import 'bucket_website_configuration_v2_args.dart';

/// Provides an S3 bucket website configuration resource. For more information, see [Hosting Websites on S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With `routing_rule` configured
///
///
///
/// ### With `routing_rules` configured
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
/// **Using `pulumi import` to import** S3 bucket website configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name,123456789012
/// ```
class BucketWebsiteConfigurationV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Name of the error document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationV2ErrorDocument?>
      errorDocument;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Name of the index document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationV2IndexDocument?>
      indexDocument;

  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  late final pulumi.Output<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>
      redirectAllRequestsTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  late final pulumi.Output<String> routingRuleDetails;

  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  late final pulumi.Output<List<BucketWebsiteConfigurationV2RoutingRule>>
      routingRules;

  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  late final pulumi.Output<String> websiteDomain;

  /// Website endpoint.
  late final pulumi.Output<String> websiteEndpoint;

  BucketWebsiteConfigurationV2(
    String name, {
    BucketWebsiteConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.errorDocument =
        registerOutput<BucketWebsiteConfigurationV2ErrorDocument?>(
            'errorDocument');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.indexDocument =
        registerOutput<BucketWebsiteConfigurationV2IndexDocument?>(
            'indexDocument');
    this.redirectAllRequestsTo =
        registerOutput<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>(
            'redirectAllRequestsTo');
    this.region = registerOutput<String>('region');
    this.routingRuleDetails = registerOutput<String>('routingRuleDetails');
    this.routingRules =
        registerOutput<List<BucketWebsiteConfigurationV2RoutingRule>>(
            'routingRules');
    this.websiteDomain = registerOutput<String>('websiteDomain');
    this.websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }
}
