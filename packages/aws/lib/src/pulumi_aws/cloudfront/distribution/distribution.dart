import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_connection_function_association/distribution_connection_function_association.dart';
import '../distribution_custom_error_response/distribution_custom_error_response.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior.dart';
import '../distribution_logging_config/distribution_logging_config.dart';
import '../distribution_ordered_cache_behavior/distribution_ordered_cache_behavior.dart';
import '../distribution_origin/distribution_origin.dart';
import '../distribution_origin_group/distribution_origin_group.dart';
import '../distribution_restrictions/distribution_restrictions.dart';
import '../distribution_trusted_key_group/distribution_trusted_key_group.dart';
import '../distribution_trusted_signer/distribution_trusted_signer.dart';
import '../distribution_viewer_certificate/distribution_viewer_certificate.dart';
import '../distribution_viewer_mtls_config/distribution_viewer_mtls_config.dart';
import 'distribution_args.dart';

/// Creates an Amazon CloudFront web distribution.
///
/// For information about CloudFront distributions, see the [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For specific information about creating CloudFront web distributions, see the [POST Distribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html) page in the Amazon CloudFront API Reference.
///
/// > **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the `retain_on_delete` flag.
///
/// ## Example Usage
///
/// ### S3 Origin
///
/// The example below creates a CloudFront distribution with an S3 origin.
///
///
///
/// ### With Failover Routing
///
/// The example below creates a CloudFront distribution with an origin group for failover routing.
///
///
///
/// ### With Managed Caching Policy
///
/// The example below creates a CloudFront distribution with an [AWS managed caching policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html).
///
///
///
/// ### With V2 logging to S3
///
/// The example below creates a CloudFront distribution with [standard logging V2 to S3](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
///
///
/// ### With V2 logging to Data Firehose
///
/// The example below creates a CloudFront distribution with [standard logging V2 to Data Firehose](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
///
///
/// ### With Connection Function and Viewer mTLS
///
/// The example below creates a CloudFront distribution with a connection function association and viewer mTLS configuration.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Distributions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distribution:Distribution distribution E74FTE3EXAMPLE
/// ```
class Distribution extends pulumi.CustomResource {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  late final pulumi.Output<List<String>?> aliases;

  /// ID of the Anycast static IP list that is associated with the distribution.
  late final pulumi.Output<String?> anycastIpListId;

  /// ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  late final pulumi.Output<String> arn;

  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final pulumi.Output<String> callerReference;

  /// Any comments you want to include about the distribution.
  late final pulumi.Output<String?> comment;

  /// A connection function association configuration block (maximum one).
  late final pulumi.Output<DistributionConnectionFunctionAssociation?>
      connectionFunctionAssociation;

  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  late final pulumi.Output<String> continuousDeploymentPolicyId;

  /// One or more custom error response elements (multiples allowed).
  late final pulumi.Output<List<DistributionCustomErrorResponse>?>
      customErrorResponses;

  /// Default cache behavior for this distribution (maximum one). Requires either `cache_policy_id` (preferred) or `forwarded_values` (deprecated) be set.
  late final pulumi.Output<DistributionDefaultCacheBehavior>
      defaultCacheBehavior;

  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  late final pulumi.Output<String?> defaultRootObject;

  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  late final pulumi.Output<String> domainName;

  /// Whether the distribution is enabled to accept end user requests for content.
  late final pulumi.Output<bool> enabled;

  /// Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;

  /// CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  late final pulumi.Output<String> hostedZoneId;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  late final pulumi.Output<String?> httpVersion;

  /// Number of invalidation batches currently in progress.
  late final pulumi.Output<int> inProgressValidationBatches;

  /// Whether the IPv6 is enabled for the distribution.
  late final pulumi.Output<bool?> isIpv6Enabled;

  /// Date and time the distribution was last modified.
  late final pulumi.Output<String> lastModifiedTime;

  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  late final pulumi.Output<DistributionLoggingConfig?> loggingConfig;

  /// Whether V1 logging is enabled for the distribution.
  late final pulumi.Output<bool> loggingV1Enabled;

  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  late final pulumi.Output<List<DistributionOrderedCacheBehavior>?>
      orderedCacheBehaviors;

  /// One or more origin_group for this distribution (multiples allowed).
  late final pulumi.Output<List<DistributionOriginGroup>?> originGroups;

  /// One or more origins for this distribution (multiples allowed).
  late final pulumi.Output<List<DistributionOrigin>> origins;

  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  late final pulumi.Output<String?> priceClass;

  /// The restriction configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionRestrictions> restrictions;

  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  late final pulumi.Output<bool?> retainOnDelete;

  /// A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  late final pulumi.Output<bool?> staging;

  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  late final pulumi.Output<List<DistributionTrustedKeyGroup>> trustedKeyGroups;

  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  late final pulumi.Output<List<DistributionTrustedSigner>> trustedSigners;

  /// The SSL configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionViewerCertificate> viewerCertificate;

  /// The viewer mTLS configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionViewerMtlsConfig?> viewerMtlsConfig;

  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  late final pulumi.Output<bool?> waitForDeployment;

  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  late final pulumi.Output<String?> webAclId;

  Distribution(
    String name, {
    DistributionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distribution:Distribution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>?>('aliases');
    this.anycastIpListId = registerOutput<String?>('anycastIpListId');
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.connectionFunctionAssociation =
        registerOutput<DistributionConnectionFunctionAssociation?>(
            'connectionFunctionAssociation');
    this.continuousDeploymentPolicyId =
        registerOutput<String>('continuousDeploymentPolicyId');
    this.customErrorResponses =
        registerOutput<List<DistributionCustomErrorResponse>?>(
            'customErrorResponses');
    this.defaultCacheBehavior =
        registerOutput<DistributionDefaultCacheBehavior>(
            'defaultCacheBehavior');
    this.defaultRootObject = registerOutput<String?>('defaultRootObject');
    this.domainName = registerOutput<String>('domainName');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.httpVersion = registerOutput<String?>('httpVersion');
    this.inProgressValidationBatches =
        registerOutput<int>('inProgressValidationBatches');
    this.isIpv6Enabled = registerOutput<bool?>('isIpv6Enabled');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.loggingConfig =
        registerOutput<DistributionLoggingConfig?>('loggingConfig');
    this.loggingV1Enabled = registerOutput<bool>('loggingV1Enabled');
    this.orderedCacheBehaviors =
        registerOutput<List<DistributionOrderedCacheBehavior>?>(
            'orderedCacheBehaviors');
    this.originGroups =
        registerOutput<List<DistributionOriginGroup>?>('originGroups');
    this.origins = registerOutput<List<DistributionOrigin>>('origins');
    this.priceClass = registerOutput<String?>('priceClass');
    this.restrictions =
        registerOutput<DistributionRestrictions>('restrictions');
    this.retainOnDelete = registerOutput<bool?>('retainOnDelete');
    this.staging = registerOutput<bool?>('staging');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustedKeyGroups =
        registerOutput<List<DistributionTrustedKeyGroup>>('trustedKeyGroups');
    this.trustedSigners =
        registerOutput<List<DistributionTrustedSigner>>('trustedSigners');
    this.viewerCertificate =
        registerOutput<DistributionViewerCertificate>('viewerCertificate');
    this.viewerMtlsConfig =
        registerOutput<DistributionViewerMtlsConfig?>('viewerMtlsConfig');
    this.waitForDeployment = registerOutput<bool?>('waitForDeployment');
    this.webAclId = registerOutput<String?>('webAclId');
  }
}
