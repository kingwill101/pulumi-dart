import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_active_trusted_key_group/multitenant_distribution_active_trusted_key_group.dart';
import '../multitenant_distribution_cache_behavior/multitenant_distribution_cache_behavior.dart';
import '../multitenant_distribution_custom_error_response/multitenant_distribution_custom_error_response.dart';
import '../multitenant_distribution_default_cache_behavior/multitenant_distribution_default_cache_behavior.dart';
import '../multitenant_distribution_origin/multitenant_distribution_origin.dart';
import '../multitenant_distribution_origin_group/multitenant_distribution_origin_group.dart';
import '../multitenant_distribution_restrictions/multitenant_distribution_restrictions.dart';
import '../multitenant_distribution_tenant_config/multitenant_distribution_tenant_config.dart';
import '../multitenant_distribution_timeouts/multitenant_distribution_timeouts.dart';
import '../multitenant_distribution_viewer_certificate/multitenant_distribution_viewer_certificate.dart';
import 'multitenant_distribution_args.dart';

/// Creates an Amazon CloudFront multi-tenant distribution.
///
/// Multi-tenant distributions are a specialized type of CloudFront distribution designed for multi-tenant applications. They have specific limitations and requirements compared to standard CloudFront distributions.
///
/// For information about CloudFront multi-tenant distributions, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/).
///
/// > **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the `retain_on_delete` flag.
///
/// ## Multi-tenant Distribution Limitations
///
/// Multi-tenant distributions have the following limitations compared to standard CloudFront distributions:
///
/// - **Connection Mode**: Automatically set to `tenant-only` and cannot be modified
/// - **Cache Policies**: Must use cache policies instead of legacy TTL settings
/// - **Trusted Key Groups**: Must use trusted key groups instead of trusted signers
/// - **WAF Integration**: Only supports WAF v2 web ACLs
/// - **Certificate Management**: Must use ACM certificates (IAM certificates not supported)
///
/// ### Unsupported Attributes
///
/// The following attributes that are available in standard CloudFront distributions are **not supported** for multi-tenant distributions:
///
/// - `active_trusted_signers` - Use `active_trusted_key_groups` instead
/// - `alias_icp_recordals` - Managed by connection groups
/// - `aliases` - Managed by connection groups
/// - `anycast_ip_list_id` - Use connection groups instead
/// - `continuous_deployment_policy_id`
/// - `forwarded_values` in cache behaviors - Deprecated, use cache policies instead
/// - `is_ipv6_enabled` - Managed by connection groups
/// - `price_class` - Managed by connection groups
/// - `smooth_streaming` in cache behaviors
/// - `staging` mode
/// - `trusted_signers` in cache behaviors - Use `trusted_key_groups` instead
/// - Cache behavior TTL settings (`default_ttl`, `max_ttl`, `min_ttl`) - Use cache policies instead
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Multi-tenant Distributions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/multitenantDistribution:MultitenantDistribution distribution E74FTE3AEXAMPLE
/// ```
class MultitenantDistribution extends CustomResource {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  late final Output<List<MultitenantDistributionActiveTrustedKeyGroup>?>
      activeTrustedKeyGroups;

  /// ARN for the distribution.
  late final Output<String> arn;

  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  late final Output<List<MultitenantDistributionCacheBehavior>?> cacheBehaviors;

  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final Output<String> callerReference;

  /// Any comments you want to include about the distribution.
  late final Output<String> comment;

  /// Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  late final Output<String> connectionMode;

  /// One or more custom error response elements. See Custom Error Response below.
  late final Output<List<MultitenantDistributionCustomErrorResponse>?>
      customErrorResponses;

  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  late final Output<MultitenantDistributionDefaultCacheBehavior>
      defaultCacheBehavior;

  /// Object that you want CloudFront to return when an end user requests the root URL.
  late final Output<String?> defaultRootObject;

  /// Domain name corresponding to the distribution.
  late final Output<String> domainName;

  /// Whether the distribution is enabled to accept end user requests for content.
  late final Output<bool> enabled;

  /// Current version of the distribution's information.
  late final Output<String> etag;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  late final Output<String> httpVersion;

  /// Number of invalidation batches currently in progress.
  late final Output<int> inProgressInvalidationBatches;

  /// Date and time the distribution was last modified.
  late final Output<String> lastModifiedTime;

  /// One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  late final Output<List<MultitenantDistributionOriginGroup>?> originGroups;

  /// One or more origins for this distribution (multiples allowed). See Origin below.
  late final Output<List<MultitenantDistributionOrigin>?> origins;

  /// Restriction configuration for this distribution. See Restrictions below.
  late final Output<MultitenantDistributionRestrictions?> restrictions;

  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  late final Output<MultitenantDistributionTenantConfig> tenantConfig;
  late final Output<MultitenantDistributionTimeouts?> timeouts;

  /// SSL configuration for this distribution. See Viewer Certificate below.
  late final Output<MultitenantDistributionViewerCertificate> viewerCertificate;

  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  late final Output<String?> webAclId;

  MultitenantDistribution(
    String name, {
    MultitenantDistributionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/multitenantDistribution:MultitenantDistribution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeTrustedKeyGroups =
        registerOutput<List<MultitenantDistributionActiveTrustedKeyGroup>?>(
            'activeTrustedKeyGroups');
    this.arn = registerOutput<String>('arn');
    this.cacheBehaviors =
        registerOutput<List<MultitenantDistributionCacheBehavior>?>(
            'cacheBehaviors');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String>('comment');
    this.connectionMode = registerOutput<String>('connectionMode');
    this.customErrorResponses =
        registerOutput<List<MultitenantDistributionCustomErrorResponse>?>(
            'customErrorResponses');
    this.defaultCacheBehavior =
        registerOutput<MultitenantDistributionDefaultCacheBehavior>(
            'defaultCacheBehavior');
    this.defaultRootObject = registerOutput<String?>('defaultRootObject');
    this.domainName = registerOutput<String>('domainName');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.httpVersion = registerOutput<String>('httpVersion');
    this.inProgressInvalidationBatches =
        registerOutput<int>('inProgressInvalidationBatches');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.originGroups =
        registerOutput<List<MultitenantDistributionOriginGroup>?>(
            'originGroups');
    this.origins =
        registerOutput<List<MultitenantDistributionOrigin>?>('origins');
    this.restrictions =
        registerOutput<MultitenantDistributionRestrictions?>('restrictions');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenantConfig =
        registerOutput<MultitenantDistributionTenantConfig>('tenantConfig');
    this.timeouts =
        registerOutput<MultitenantDistributionTimeouts?>('timeouts');
    this.viewerCertificate =
        registerOutput<MultitenantDistributionViewerCertificate>(
            'viewerCertificate');
    this.webAclId = registerOutput<String?>('webAclId');
  }
}
