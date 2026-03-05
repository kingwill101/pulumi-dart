// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_connection_function_association.dart';
import 'distribution_custom_error_response.dart';
import 'distribution_default_cache_behavior.dart';
import 'distribution_logging_config.dart';
import 'distribution_ordered_cache_behavior.dart';
import 'distribution_origin.dart';
import 'distribution_origin_group.dart';
import 'distribution_restrictions.dart';
import 'distribution_viewer_certificate.dart';
import 'distribution_viewer_mtls_config.dart';

/// {@template pulumi_cloudfront_distribution_distribution_args_doc}
/// The set of arguments for Distribution.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_distribution_distribution_args_doc}
class DistributionArgs {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  final pulumi.Input<List<String>>? aliases;
  /// ID of the Anycast static IP list that is associated with the distribution.
  final pulumi.Input<String>? anycastIpListId;
  /// Any comments you want to include about the distribution.
  final pulumi.Input<String>? comment;
  /// A connection function association configuration block (maximum one).
  final pulumi.Input<DistributionConnectionFunctionAssociation>? connectionFunctionAssociation;
  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  final pulumi.Input<String>? continuousDeploymentPolicyId;
  /// One or more custom error response elements (multiples allowed).
  final pulumi.Input<List<DistributionCustomErrorResponse>>? customErrorResponses;
  /// Default cache behavior for this distribution (maximum one). Requires either `cache_policy_id` (preferred) or `forwarded_values` (deprecated) be set.
  final pulumi.Input<DistributionDefaultCacheBehavior> defaultCacheBehavior;
  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  final pulumi.Input<String>? defaultRootObject;
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool> enabled;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  final pulumi.Input<String>? httpVersion;
  /// Whether the IPv6 is enabled for the distribution.
  final pulumi.Input<bool>? isIpv6Enabled;
  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  final pulumi.Input<DistributionLoggingConfig>? loggingConfig;
  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  final pulumi.Input<List<DistributionOrderedCacheBehavior>>? orderedCacheBehaviors;
  /// One or more origin_group for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOriginGroup>>? originGroups;
  /// One or more origins for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOrigin>> origins;
  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  final pulumi.Input<String>? priceClass;
  /// The restriction configuration for this distribution (maximum one).
  final pulumi.Input<DistributionRestrictions> restrictions;
  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  final pulumi.Input<bool>? retainOnDelete;
  /// A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  final pulumi.Input<bool>? staging;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The SSL configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerCertificate> viewerCertificate;
  /// The viewer mTLS configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerMtlsConfig>? viewerMtlsConfig;
  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForDeployment;
  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  final pulumi.Input<String>? webAclId;

  /// Creates a new [DistributionArgs].
  /// [aliases] Extra CNAMEs (alternate domain names), if any, for this distribution.
  /// [anycastIpListId] ID of the Anycast static IP list that is associated with the distribution.
  /// [comment] Any comments you want to include about the distribution.
  /// [connectionFunctionAssociation] A connection function association configuration block (maximum one).
  /// [continuousDeploymentPolicyId] Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  /// [customErrorResponses] One or more custom error response elements (multiples allowed).
  /// [defaultCacheBehavior] Default cache behavior for this distribution (maximum one). Requires either `cache_policy_id` (preferred) or `forwarded_values` (deprecated) be set.
  /// [defaultRootObject] Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [httpVersion] Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  /// [isIpv6Enabled] Whether the IPv6 is enabled for the distribution.
  /// [loggingConfig] The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  /// [orderedCacheBehaviors] Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  /// [originGroups] One or more origin_group for this distribution (multiples allowed).
  /// [origins] One or more origins for this distribution (multiples allowed).
  /// [priceClass] Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  /// [restrictions] The restriction configuration for this distribution (maximum one).
  /// [retainOnDelete] Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  /// [staging] A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [viewerCertificate] The SSL configuration for this distribution (maximum one).
  /// [viewerMtlsConfig] The viewer mTLS configuration for this distribution (maximum one).
  /// [waitForDeployment] If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  /// [webAclId] Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  DistributionArgs({
    this.aliases,
    this.anycastIpListId,
    this.comment,
    this.connectionFunctionAssociation,
    this.continuousDeploymentPolicyId,
    this.customErrorResponses,
    required this.defaultCacheBehavior,
    this.defaultRootObject,
    required this.enabled,
    this.httpVersion,
    this.isIpv6Enabled,
    this.loggingConfig,
    this.orderedCacheBehaviors,
    this.originGroups,
    required this.origins,
    this.priceClass,
    required this.restrictions,
    this.retainOnDelete,
    this.staging,
    this.tags,
    required this.viewerCertificate,
    this.viewerMtlsConfig,
    this.waitForDeployment,
    this.webAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'anycastIpListId': ?anycastIpListId,
      'comment': ?comment,
      'connectionFunctionAssociation': ?pulumi.Input.mapOptionalInputValue<DistributionConnectionFunctionAssociation, Map<String, dynamic>>(connectionFunctionAssociation, (value) => value.toMap()),
      'continuousDeploymentPolicyId': ?continuousDeploymentPolicyId,
      'customErrorResponses': ?pulumi.Input.mapOptionalInputValue<List<DistributionCustomErrorResponse>, List<Map<String, dynamic>>>(customErrorResponses, (value) => pulumi.Input.encodeList<DistributionCustomErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCacheBehavior': pulumi.Input.mapInputValue<DistributionDefaultCacheBehavior, Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap()),
      'defaultRootObject': ?defaultRootObject,
      'enabled': enabled,
      'httpVersion': ?httpVersion,
      'isIpv6Enabled': ?isIpv6Enabled,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<DistributionLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'orderedCacheBehaviors': ?pulumi.Input.mapOptionalInputValue<List<DistributionOrderedCacheBehavior>, List<Map<String, dynamic>>>(orderedCacheBehaviors, (value) => pulumi.Input.encodeList<DistributionOrderedCacheBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originGroups': ?pulumi.Input.mapOptionalInputValue<List<DistributionOriginGroup>, List<Map<String, dynamic>>>(originGroups, (value) => pulumi.Input.encodeList<DistributionOriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'origins': pulumi.Input.mapInputValue<List<DistributionOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<DistributionOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priceClass': ?priceClass,
      'restrictions': pulumi.Input.mapInputValue<DistributionRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'retainOnDelete': ?retainOnDelete,
      'staging': ?staging,
      'tags': ?tags,
      'viewerCertificate': pulumi.Input.mapInputValue<DistributionViewerCertificate, Map<String, dynamic>>(viewerCertificate, (value) => value.toMap()),
      'viewerMtlsConfig': ?pulumi.Input.mapOptionalInputValue<DistributionViewerMtlsConfig, Map<String, dynamic>>(viewerMtlsConfig, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
      'webAclId': ?webAclId,
    };
  }

  factory DistributionArgs.fromMap(Map<String, dynamic> map) {
    return DistributionArgs(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionFunctionAssociation: (() { final guardedValue = map['connectionFunctionAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConnectionFunctionAssociation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousDeploymentPolicyId: (() { final guardedValue = map['continuousDeploymentPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customErrorResponses: (() { final guardedValue = map['customErrorResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionCustomErrorResponse>(guardedValue, (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultCacheBehavior: pulumi.Input.fromValue(DistributionDefaultCacheBehavior.fromMap((map['defaultCacheBehavior']! as Map).cast<String, dynamic>())),
      defaultRootObject: (() { final guardedValue = map['defaultRootObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isIpv6Enabled: (() { final guardedValue = map['isIpv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderedCacheBehaviors: (() { final guardedValue = map['orderedCacheBehaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(guardedValue, (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originGroups: (() { final guardedValue = map['originGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOriginGroup>(guardedValue, (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      origins: pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOrigin>(map['origins']!, (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      priceClass: (() { final guardedValue = map['priceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictions: pulumi.Input.fromValue(DistributionRestrictions.fromMap((map['restrictions']! as Map).cast<String, dynamic>())),
      retainOnDelete: (() { final guardedValue = map['retainOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      staging: (() { final guardedValue = map['staging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      viewerCertificate: pulumi.Input.fromValue(DistributionViewerCertificate.fromMap((map['viewerCertificate']! as Map).cast<String, dynamic>())),
      viewerMtlsConfig: (() { final guardedValue = map['viewerMtlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionViewerMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForDeployment: (() { final guardedValue = map['waitForDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webAclId: (() { final guardedValue = map['webAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

