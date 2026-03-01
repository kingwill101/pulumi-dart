// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_active_trusted_key_group.dart';
import 'multitenant_distribution_cache_behavior.dart';
import 'multitenant_distribution_custom_error_response.dart';
import 'multitenant_distribution_default_cache_behavior.dart';
import 'multitenant_distribution_origin.dart';
import 'multitenant_distribution_origin_group.dart';
import 'multitenant_distribution_restrictions.dart';
import 'multitenant_distribution_tenant_config.dart';
import 'multitenant_distribution_timeouts.dart';
import 'multitenant_distribution_viewer_certificate.dart';

/// Input properties used for looking up and filtering MultitenantDistribution resources.
class MultitenantDistributionState {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  final pulumi.Input<List<MultitenantDistributionActiveTrustedKeyGroup>>? activeTrustedKeyGroups;
  /// ARN for the distribution.
  final pulumi.Input<String>? arn;
  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  final pulumi.Input<List<MultitenantDistributionCacheBehavior>>? cacheBehaviors;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  final pulumi.Input<String>? callerReference;
  /// Any comments you want to include about the distribution.
  final pulumi.Input<String>? comment;
  /// Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  final pulumi.Input<String>? connectionMode;
  /// One or more custom error response elements. See Custom Error Response below.
  final pulumi.Input<List<MultitenantDistributionCustomErrorResponse>>? customErrorResponses;
  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  final pulumi.Input<MultitenantDistributionDefaultCacheBehavior>? defaultCacheBehavior;
  /// Object that you want CloudFront to return when an end user requests the root URL.
  final pulumi.Input<String>? defaultRootObject;
  /// Domain name corresponding to the distribution.
  final pulumi.Input<String>? domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool>? enabled;
  /// Current version of the distribution's information.
  final pulumi.Input<String>? etag;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  final pulumi.Input<String>? httpVersion;
  /// Number of invalidation batches currently in progress.
  final pulumi.Input<int>? inProgressInvalidationBatches;
  /// Date and time the distribution was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  final pulumi.Input<List<MultitenantDistributionOriginGroup>>? originGroups;
  /// One or more origins for this distribution (multiples allowed). See Origin below.
  final pulumi.Input<List<MultitenantDistributionOrigin>>? origins;
  /// Restriction configuration for this distribution. See Restrictions below.
  final pulumi.Input<MultitenantDistributionRestrictions>? restrictions;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  final pulumi.Input<MultitenantDistributionTenantConfig>? tenantConfig;
  final pulumi.Input<MultitenantDistributionTimeouts>? timeouts;
  /// SSL configuration for this distribution. See Viewer Certificate below.
  final pulumi.Input<MultitenantDistributionViewerCertificate>? viewerCertificate;
  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  final pulumi.Input<String>? webAclId;

  /// Creates a new [MultitenantDistributionState].
  /// [activeTrustedKeyGroups] List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  /// [arn] ARN for the distribution.
  /// [cacheBehaviors] Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  /// [callerReference] Internal value used by CloudFront to allow future updates to the distribution configuration.
  /// [comment] Any comments you want to include about the distribution.
  /// [connectionMode] Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  /// [customErrorResponses] One or more custom error response elements. See Custom Error Response below.
  /// [defaultCacheBehavior] Default cache behavior for this distribution. See Default Cache Behavior below.
  /// [defaultRootObject] Object that you want CloudFront to return when an end user requests the root URL.
  /// [domainName] Domain name corresponding to the distribution.
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [etag] Current version of the distribution's information.
  /// [httpVersion] Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  /// [inProgressInvalidationBatches] Number of invalidation batches currently in progress.
  /// [lastModifiedTime] Date and time the distribution was last modified.
  /// [originGroups] One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  /// [origins] One or more origins for this distribution (multiples allowed). See Origin below.
  /// [restrictions] Restriction configuration for this distribution. See Restrictions below.
  /// [status] Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tenantConfig] Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  /// [timeouts] Optional.
  /// [viewerCertificate] SSL configuration for this distribution. See Viewer Certificate below.
  /// [webAclId] Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  MultitenantDistributionState({
    pulumi.Output<List<MultitenantDistributionActiveTrustedKeyGroup>>? activeTrustedKeyGroups,
    pulumi.Output<String>? arn,
    pulumi.Output<List<MultitenantDistributionCacheBehavior>>? cacheBehaviors,
    pulumi.Output<String>? callerReference,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? connectionMode,
    pulumi.Output<List<MultitenantDistributionCustomErrorResponse>>? customErrorResponses,
    pulumi.Output<MultitenantDistributionDefaultCacheBehavior>? defaultCacheBehavior,
    pulumi.Output<String>? defaultRootObject,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? httpVersion,
    pulumi.Output<int>? inProgressInvalidationBatches,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<List<MultitenantDistributionOriginGroup>>? originGroups,
    pulumi.Output<List<MultitenantDistributionOrigin>>? origins,
    pulumi.Output<MultitenantDistributionRestrictions>? restrictions,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<MultitenantDistributionTenantConfig>? tenantConfig,
    pulumi.Output<MultitenantDistributionTimeouts>? timeouts,
    pulumi.Output<MultitenantDistributionViewerCertificate>? viewerCertificate,
    pulumi.Output<String>? webAclId,
  }) :
      activeTrustedKeyGroups = pulumi.Input.asOptionalInput<List<MultitenantDistributionActiveTrustedKeyGroup>>(activeTrustedKeyGroups),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cacheBehaviors = pulumi.Input.asOptionalInput<List<MultitenantDistributionCacheBehavior>>(cacheBehaviors),
      callerReference = pulumi.Input.asOptionalInput<String>(callerReference),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
      customErrorResponses = pulumi.Input.asOptionalInput<List<MultitenantDistributionCustomErrorResponse>>(customErrorResponses),
      defaultCacheBehavior = pulumi.Input.asOptionalInput<MultitenantDistributionDefaultCacheBehavior>(defaultCacheBehavior),
      defaultRootObject = pulumi.Input.asOptionalInput<String>(defaultRootObject),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      httpVersion = pulumi.Input.asOptionalInput<String>(httpVersion),
      inProgressInvalidationBatches = pulumi.Input.asOptionalInput<int>(inProgressInvalidationBatches),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      originGroups = pulumi.Input.asOptionalInput<List<MultitenantDistributionOriginGroup>>(originGroups),
      origins = pulumi.Input.asOptionalInput<List<MultitenantDistributionOrigin>>(origins),
      restrictions = pulumi.Input.asOptionalInput<MultitenantDistributionRestrictions>(restrictions),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenantConfig = pulumi.Input.asOptionalInput<MultitenantDistributionTenantConfig>(tenantConfig),
      timeouts = pulumi.Input.asOptionalInput<MultitenantDistributionTimeouts>(timeouts),
      viewerCertificate = pulumi.Input.asOptionalInput<MultitenantDistributionViewerCertificate>(viewerCertificate),
      webAclId = pulumi.Input.asOptionalInput<String>(webAclId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTrustedKeyGroups': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionActiveTrustedKeyGroup>, List<Map<String, dynamic>>>(activeTrustedKeyGroups, (value) => pulumi.Input.encodeList<MultitenantDistributionActiveTrustedKeyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'cacheBehaviors': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionCacheBehavior>, List<Map<String, dynamic>>>(cacheBehaviors, (value) => pulumi.Input.encodeList<MultitenantDistributionCacheBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
      'callerReference': ?callerReference,
      'comment': ?comment,
      'connectionMode': ?connectionMode,
      'customErrorResponses': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionCustomErrorResponse>, List<Map<String, dynamic>>>(customErrorResponses, (value) => pulumi.Input.encodeList<MultitenantDistributionCustomErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCacheBehavior': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionDefaultCacheBehavior, Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap()),
      'defaultRootObject': ?defaultRootObject,
      'domainName': ?domainName,
      'enabled': ?enabled,
      'etag': ?etag,
      'httpVersion': ?httpVersion,
      'inProgressInvalidationBatches': ?inProgressInvalidationBatches,
      'lastModifiedTime': ?lastModifiedTime,
      'originGroups': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOriginGroup>, List<Map<String, dynamic>>>(originGroups, (value) => pulumi.Input.encodeList<MultitenantDistributionOriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'origins': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<MultitenantDistributionOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restrictions': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenantConfig': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionTenantConfig, Map<String, dynamic>>(tenantConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'viewerCertificate': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionViewerCertificate, Map<String, dynamic>>(viewerCertificate, (value) => value.toMap()),
      'webAclId': ?webAclId,
    };
  }

  factory MultitenantDistributionState.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionState(
      activeTrustedKeyGroups: map['activeTrustedKeyGroups'] == null ? null : pulumi.Output.create<List<MultitenantDistributionActiveTrustedKeyGroup>>(pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(map['activeTrustedKeyGroups'], (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cacheBehaviors: map['cacheBehaviors'] == null ? null : pulumi.Output.create<List<MultitenantDistributionCacheBehavior>>(pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(map['cacheBehaviors'], (value) => MultitenantDistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))),
      callerReference: map['callerReference'] == null ? null : pulumi.Output.create<String>(map['callerReference'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      connectionMode: map['connectionMode'] == null ? null : pulumi.Output.create<String>(map['connectionMode'] as String),
      customErrorResponses: map['customErrorResponses'] == null ? null : pulumi.Output.create<List<MultitenantDistributionCustomErrorResponse>>(pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(map['customErrorResponses'], (value) => MultitenantDistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      defaultCacheBehavior: map['defaultCacheBehavior'] == null ? null : pulumi.Output.create<MultitenantDistributionDefaultCacheBehavior>(MultitenantDistributionDefaultCacheBehavior.fromMap((map['defaultCacheBehavior'] as Map).cast<String, dynamic>())),
      defaultRootObject: map['defaultRootObject'] == null ? null : pulumi.Output.create<String>(map['defaultRootObject'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      httpVersion: map['httpVersion'] == null ? null : pulumi.Output.create<String>(map['httpVersion'] as String),
      inProgressInvalidationBatches: map['inProgressInvalidationBatches'] == null ? null : pulumi.Output.create<int>(map['inProgressInvalidationBatches'] as int),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      originGroups: map['originGroups'] == null ? null : pulumi.Output.create<List<MultitenantDistributionOriginGroup>>(pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(map['originGroups'], (value) => MultitenantDistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>()))),
      origins: map['origins'] == null ? null : pulumi.Output.create<List<MultitenantDistributionOrigin>>(pulumi.Input.decodeList<MultitenantDistributionOrigin>(map['origins'], (value) => MultitenantDistributionOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      restrictions: map['restrictions'] == null ? null : pulumi.Output.create<MultitenantDistributionRestrictions>(MultitenantDistributionRestrictions.fromMap((map['restrictions'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenantConfig: map['tenantConfig'] == null ? null : pulumi.Output.create<MultitenantDistributionTenantConfig>(MultitenantDistributionTenantConfig.fromMap((map['tenantConfig'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<MultitenantDistributionTimeouts>(MultitenantDistributionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      viewerCertificate: map['viewerCertificate'] == null ? null : pulumi.Output.create<MultitenantDistributionViewerCertificate>(MultitenantDistributionViewerCertificate.fromMap((map['viewerCertificate'] as Map).cast<String, dynamic>())),
      webAclId: map['webAclId'] == null ? null : pulumi.Output.create<String>(map['webAclId'] as String),
    );
  }
}

