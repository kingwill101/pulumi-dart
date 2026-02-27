// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for MultitenantDistribution.
class MultitenantDistributionArgs {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  final Input<List<MultitenantDistributionActiveTrustedKeyGroup>>?
      activeTrustedKeyGroups;

  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  final Input<List<MultitenantDistributionCacheBehavior>>? cacheBehaviors;

  /// Any comments you want to include about the distribution.
  final Input<String> comment;

  /// One or more custom error response elements. See Custom Error Response below.
  final Input<List<MultitenantDistributionCustomErrorResponse>>?
      customErrorResponses;

  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  final Input<MultitenantDistributionDefaultCacheBehavior> defaultCacheBehavior;

  /// Object that you want CloudFront to return when an end user requests the root URL.
  final Input<String>? defaultRootObject;

  /// Whether the distribution is enabled to accept end user requests for content.
  final Input<bool> enabled;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  final Input<String>? httpVersion;

  /// One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  final Input<List<MultitenantDistributionOriginGroup>>? originGroups;

  /// One or more origins for this distribution (multiples allowed). See Origin below.
  final Input<List<MultitenantDistributionOrigin>>? origins;

  /// Restriction configuration for this distribution. See Restrictions below.
  final Input<MultitenantDistributionRestrictions>? restrictions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  final Input<MultitenantDistributionTenantConfig> tenantConfig;
  final Input<MultitenantDistributionTimeouts>? timeouts;

  /// SSL configuration for this distribution. See Viewer Certificate below.
  final Input<MultitenantDistributionViewerCertificate> viewerCertificate;

  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  final Input<String>? webAclId;

  MultitenantDistributionArgs({
    this.activeTrustedKeyGroups,
    this.cacheBehaviors,
    required this.comment,
    this.customErrorResponses,
    required this.defaultCacheBehavior,
    this.defaultRootObject,
    required this.enabled,
    this.httpVersion,
    this.originGroups,
    this.origins,
    this.restrictions,
    this.tags,
    required this.tenantConfig,
    this.timeouts,
    required this.viewerCertificate,
    this.webAclId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeTrustedKeyGroupsValue = activeTrustedKeyGroups;
    if (activeTrustedKeyGroupsValue != null) {
      map['activeTrustedKeyGroups'] = Input.mapOptionalInputValue<
              List<MultitenantDistributionActiveTrustedKeyGroup>,
              List<Map<String, dynamic>>>(
          activeTrustedKeyGroupsValue,
          (value) => Input.encodeList<
              MultitenantDistributionActiveTrustedKeyGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final cacheBehaviorsValue = cacheBehaviors;
    if (cacheBehaviorsValue != null) {
      map['cacheBehaviors'] = Input.mapOptionalInputValue<
              List<MultitenantDistributionCacheBehavior>,
              List<Map<String, dynamic>>>(
          cacheBehaviorsValue,
          (value) => Input.encodeList<MultitenantDistributionCacheBehavior,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['comment'] = comment;
    final customErrorResponsesValue = customErrorResponses;
    if (customErrorResponsesValue != null) {
      map['customErrorResponses'] = Input.mapOptionalInputValue<
              List<MultitenantDistributionCustomErrorResponse>,
              List<Map<String, dynamic>>>(
          customErrorResponsesValue,
          (value) => Input.encodeList<
              MultitenantDistributionCustomErrorResponse,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['defaultCacheBehavior'] = Input.mapInputValue<
        MultitenantDistributionDefaultCacheBehavior,
        Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap());
    final defaultRootObjectValue = defaultRootObject;
    if (defaultRootObjectValue != null) {
      map['defaultRootObject'] = defaultRootObjectValue;
    }
    map['enabled'] = enabled;
    final httpVersionValue = httpVersion;
    if (httpVersionValue != null) {
      map['httpVersion'] = httpVersionValue;
    }
    final originGroupsValue = originGroups;
    if (originGroupsValue != null) {
      map['originGroups'] = Input.mapOptionalInputValue<
              List<MultitenantDistributionOriginGroup>,
              List<Map<String, dynamic>>>(
          originGroupsValue,
          (value) => Input.encodeList<MultitenantDistributionOriginGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final originsValue = origins;
    if (originsValue != null) {
      map['origins'] = Input.mapOptionalInputValue<
              List<MultitenantDistributionOrigin>, List<Map<String, dynamic>>>(
          originsValue,
          (value) => Input.encodeList<MultitenantDistributionOrigin,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final restrictionsValue = restrictions;
    if (restrictionsValue != null) {
      map['restrictions'] = Input.mapOptionalInputValue<
          MultitenantDistributionRestrictions,
          Map<String, dynamic>>(restrictionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tenantConfig'] = Input.mapInputValue<
        MultitenantDistributionTenantConfig,
        Map<String, dynamic>>(tenantConfig, (value) => value.toMap());
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          MultitenantDistributionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['viewerCertificate'] = Input.mapInputValue<
        MultitenantDistributionViewerCertificate,
        Map<String, dynamic>>(viewerCertificate, (value) => value.toMap());
    final webAclIdValue = webAclId;
    if (webAclIdValue != null) {
      map['webAclId'] = webAclIdValue;
    }
    return map;
  }

  factory MultitenantDistributionArgs.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionArgs(
      activeTrustedKeyGroups: Input.asOptionalInput<
              List<MultitenantDistributionActiveTrustedKeyGroup>>(
          map['activeTrustedKeyGroups']),
      cacheBehaviors:
          Input.asOptionalInput<List<MultitenantDistributionCacheBehavior>>(
              map['cacheBehaviors']),
      comment: Input.asInput<String>(map['comment']),
      customErrorResponses: Input.asOptionalInput<
              List<MultitenantDistributionCustomErrorResponse>>(
          map['customErrorResponses']),
      defaultCacheBehavior:
          Input.asInput<MultitenantDistributionDefaultCacheBehavior>(
              map['defaultCacheBehavior']),
      defaultRootObject:
          Input.asOptionalInput<String>(map['defaultRootObject']),
      enabled: Input.asInput<bool>(map['enabled']),
      httpVersion: Input.asOptionalInput<String>(map['httpVersion']),
      originGroups:
          Input.asOptionalInput<List<MultitenantDistributionOriginGroup>>(
              map['originGroups']),
      origins: Input.asOptionalInput<List<MultitenantDistributionOrigin>>(
          map['origins']),
      restrictions: Input.asOptionalInput<MultitenantDistributionRestrictions>(
          map['restrictions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenantConfig: Input.asInput<MultitenantDistributionTenantConfig>(
          map['tenantConfig']),
      timeouts: Input.asOptionalInput<MultitenantDistributionTimeouts>(
          map['timeouts']),
      viewerCertificate:
          Input.asInput<MultitenantDistributionViewerCertificate>(
              map['viewerCertificate']),
      webAclId: Input.asOptionalInput<String>(map['webAclId']),
    );
  }
}
