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
  final pulumi.Input<List<MultitenantDistributionActiveTrustedKeyGroup>?>? activeTrustedKeyGroups;
  /// ARN for the distribution.
  final pulumi.Input<String?>? arn;
  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  final pulumi.Input<List<MultitenantDistributionCacheBehavior>?>? cacheBehaviors;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  final pulumi.Input<String?>? callerReference;
  /// Any comments you want to include about the distribution.
  final pulumi.Input<String?>? comment;
  /// Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  final pulumi.Input<String?>? connectionMode;
  /// One or more custom error response elements. See Custom Error Response below.
  final pulumi.Input<List<MultitenantDistributionCustomErrorResponse>?>? customErrorResponses;
  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  final pulumi.Input<MultitenantDistributionDefaultCacheBehavior?>? defaultCacheBehavior;
  /// Object that you want CloudFront to return when an end user requests the root URL.
  final pulumi.Input<String?>? defaultRootObject;
  /// Domain name corresponding to the distribution.
  final pulumi.Input<String?>? domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool?>? enabled;
  /// Current version of the distribution's information.
  final pulumi.Input<String?>? etag;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  final pulumi.Input<String?>? httpVersion;
  /// Number of invalidation batches currently in progress.
  final pulumi.Input<int?>? inProgressInvalidationBatches;
  /// Date and time the distribution was last modified.
  final pulumi.Input<String?>? lastModifiedTime;
  /// One or more originGroup for this distribution (multiples allowed). See Origin Group below.
  final pulumi.Input<List<MultitenantDistributionOriginGroup>?>? originGroups;
  /// One or more origins for this distribution (multiples allowed). See Origin below.
  final pulumi.Input<List<MultitenantDistributionOrigin>?>? origins;
  /// Restriction configuration for this distribution. See Restrictions below.
  final pulumi.Input<MultitenantDistributionRestrictions?>? restrictions;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  final pulumi.Input<MultitenantDistributionTenantConfig?>? tenantConfig;
  final pulumi.Input<MultitenantDistributionTimeouts?>? timeouts;
  /// SSL configuration for this distribution. See Viewer Certificate below.
  final pulumi.Input<MultitenantDistributionViewerCertificate?>? viewerCertificate;
  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  final pulumi.Input<String?>? webAclId;

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
  /// [originGroups] One or more originGroup for this distribution (multiples allowed). See Origin Group below.
  /// [origins] One or more origins for this distribution (multiples allowed). See Origin below.
  /// [restrictions] Restriction configuration for this distribution. See Restrictions below.
  /// [status] Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tenantConfig] Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  /// [timeouts] Optional.
  /// [viewerCertificate] SSL configuration for this distribution. See Viewer Certificate below.
  /// [webAclId] Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  const MultitenantDistributionState({
    this.activeTrustedKeyGroups,
    this.arn,
    this.cacheBehaviors,
    this.callerReference,
    this.comment,
    this.connectionMode,
    this.customErrorResponses,
    this.defaultCacheBehavior,
    this.defaultRootObject,
    this.domainName,
    this.enabled,
    this.etag,
    this.httpVersion,
    this.inProgressInvalidationBatches,
    this.lastModifiedTime,
    this.originGroups,
    this.origins,
    this.restrictions,
    this.status,
    this.tags,
    this.tagsAll,
    this.tenantConfig,
    this.timeouts,
    this.viewerCertificate,
    this.webAclId,
  });

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
      activeTrustedKeyGroups: (() { final guardedValue = map['activeTrustedKeyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(guardedValue, (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheBehaviors: (() { final guardedValue = map['cacheBehaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(guardedValue, (value) => MultitenantDistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))); })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customErrorResponses: (() { final guardedValue = map['customErrorResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(guardedValue, (value) => MultitenantDistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultCacheBehavior: (() { final guardedValue = map['defaultCacheBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRootObject: (() { final guardedValue = map['defaultRootObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inProgressInvalidationBatches: (() { final guardedValue = map['inProgressInvalidationBatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originGroups: (() { final guardedValue = map['originGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(guardedValue, (value) => MultitenantDistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionOrigin>(guardedValue, (value) => MultitenantDistributionOrigin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restrictions: (() { final guardedValue = map['restrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantConfig: (() { final guardedValue = map['tenantConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      viewerCertificate: (() { final guardedValue = map['viewerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webAclId: (() { final guardedValue = map['webAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
