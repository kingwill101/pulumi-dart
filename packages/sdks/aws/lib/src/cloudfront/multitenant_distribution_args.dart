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

/// {@template pulumi_cloudfront_multitenant_distribution_multitenant_distribution_args_doc}
/// The set of arguments for MultitenantDistribution.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_multitenant_distribution_multitenant_distribution_args_doc}
class MultitenantDistributionArgs {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  final pulumi.Input<List<MultitenantDistributionActiveTrustedKeyGroup>>?
  activeTrustedKeyGroups;

  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  final pulumi.Input<List<MultitenantDistributionCacheBehavior>>?
  cacheBehaviors;

  /// Any comments you want to include about the distribution.
  final pulumi.Input<String> comment;

  /// One or more custom error response elements. See Custom Error Response below.
  final pulumi.Input<List<MultitenantDistributionCustomErrorResponse>>?
  customErrorResponses;

  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  final pulumi.Input<MultitenantDistributionDefaultCacheBehavior>
  defaultCacheBehavior;

  /// Object that you want CloudFront to return when an end user requests the root URL.
  final pulumi.Input<String>? defaultRootObject;

  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool> enabled;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  final pulumi.Input<String>? httpVersion;

  /// One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  final pulumi.Input<List<MultitenantDistributionOriginGroup>>? originGroups;

  /// One or more origins for this distribution (multiples allowed). See Origin below.
  final pulumi.Input<List<MultitenantDistributionOrigin>>? origins;

  /// Restriction configuration for this distribution. See Restrictions below.
  final pulumi.Input<MultitenantDistributionRestrictions>? restrictions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  final pulumi.Input<MultitenantDistributionTenantConfig> tenantConfig;
  final pulumi.Input<MultitenantDistributionTimeouts>? timeouts;

  /// SSL configuration for this distribution. See Viewer Certificate below.
  final pulumi.Input<MultitenantDistributionViewerCertificate>
  viewerCertificate;

  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  final pulumi.Input<String>? webAclId;

  /// Creates a new [MultitenantDistributionArgs].
  /// [activeTrustedKeyGroups] List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  /// [cacheBehaviors] Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  /// [comment] Any comments you want to include about the distribution.
  /// [customErrorResponses] One or more custom error response elements. See Custom Error Response below.
  /// [defaultCacheBehavior] Default cache behavior for this distribution. See Default Cache Behavior below.
  /// [defaultRootObject] Object that you want CloudFront to return when an end user requests the root URL.
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [httpVersion] Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  /// [originGroups] One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  /// [origins] One or more origins for this distribution (multiples allowed). See Origin below.
  /// [restrictions] Restriction configuration for this distribution. See Restrictions below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenantConfig] Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  /// [timeouts] Optional.
  /// [viewerCertificate] SSL configuration for this distribution. See Viewer Certificate below.
  /// [webAclId] Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
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
    return <String, dynamic>{
      'activeTrustedKeyGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<MultitenantDistributionActiveTrustedKeyGroup>,
            List<Map<String, dynamic>>
          >(
            activeTrustedKeyGroups,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionActiveTrustedKeyGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cacheBehaviors':
          ?pulumi.Input.mapOptionalInputValue<
            List<MultitenantDistributionCacheBehavior>,
            List<Map<String, dynamic>>
          >(
            cacheBehaviors,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionCacheBehavior,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'comment': comment,
      'customErrorResponses':
          ?pulumi.Input.mapOptionalInputValue<
            List<MultitenantDistributionCustomErrorResponse>,
            List<Map<String, dynamic>>
          >(
            customErrorResponses,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionCustomErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultCacheBehavior':
          pulumi.Input.mapInputValue<
            MultitenantDistributionDefaultCacheBehavior,
            Map<String, dynamic>
          >(defaultCacheBehavior, (value) => value.toMap()),
      'defaultRootObject': ?defaultRootObject,
      'enabled': enabled,
      'httpVersion': ?httpVersion,
      'originGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<MultitenantDistributionOriginGroup>,
            List<Map<String, dynamic>>
          >(
            originGroups,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionOriginGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'origins':
          ?pulumi.Input.mapOptionalInputValue<
            List<MultitenantDistributionOrigin>,
            List<Map<String, dynamic>>
          >(
            origins,
            (value) =>
                pulumi.Input.encodeList<
                  MultitenantDistributionOrigin,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'restrictions':
          ?pulumi.Input.mapOptionalInputValue<
            MultitenantDistributionRestrictions,
            Map<String, dynamic>
          >(restrictions, (value) => value.toMap()),
      'tags': ?tags,
      'tenantConfig':
          pulumi.Input.mapInputValue<
            MultitenantDistributionTenantConfig,
            Map<String, dynamic>
          >(tenantConfig, (value) => value.toMap()),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            MultitenantDistributionTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'viewerCertificate':
          pulumi.Input.mapInputValue<
            MultitenantDistributionViewerCertificate,
            Map<String, dynamic>
          >(viewerCertificate, (value) => value.toMap()),
      'webAclId': ?webAclId,
    };
  }

  factory MultitenantDistributionArgs.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionArgs(
      activeTrustedKeyGroups: (() {
        final guardedValue = map['activeTrustedKeyGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(
            guardedValue,
            (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cacheBehaviors: (() {
        final guardedValue = map['cacheBehaviors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(
            guardedValue,
            (value) => MultitenantDistributionCacheBehavior.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      comment: pulumi.Input.fromValue(map['comment'] as String),
      customErrorResponses: (() {
        final guardedValue = map['customErrorResponses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(
            guardedValue,
            (value) => MultitenantDistributionCustomErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultCacheBehavior: pulumi.Input.fromValue(
        MultitenantDistributionDefaultCacheBehavior.fromMap(
          (map['defaultCacheBehavior']! as Map).cast<String, dynamic>(),
        ),
      ),
      defaultRootObject: (() {
        final guardedValue = map['defaultRootObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      httpVersion: (() {
        final guardedValue = map['httpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originGroups: (() {
        final guardedValue = map['originGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(
            guardedValue,
            (value) => MultitenantDistributionOriginGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      origins: (() {
        final guardedValue = map['origins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MultitenantDistributionOrigin>(
            guardedValue,
            (value) => MultitenantDistributionOrigin.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      restrictions: (() {
        final guardedValue = map['restrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MultitenantDistributionRestrictions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tenantConfig: pulumi.Input.fromValue(
        MultitenantDistributionTenantConfig.fromMap(
          (map['tenantConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MultitenantDistributionTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      viewerCertificate: pulumi.Input.fromValue(
        MultitenantDistributionViewerCertificate.fromMap(
          (map['viewerCertificate']! as Map).cast<String, dynamic>(),
        ),
      ),
      webAclId: (() {
        final guardedValue = map['webAclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
