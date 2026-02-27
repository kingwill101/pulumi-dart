// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_connection_function_association/distribution_connection_function_association.dart';
import '../distribution_custom_error_response/distribution_custom_error_response.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior.dart';
import '../distribution_logging_config/distribution_logging_config.dart';
import '../distribution_ordered_cache_behavior/distribution_ordered_cache_behavior.dart';
import '../distribution_origin/distribution_origin.dart';
import '../distribution_origin_group/distribution_origin_group.dart';
import '../distribution_restrictions/distribution_restrictions.dart';
import '../distribution_viewer_certificate/distribution_viewer_certificate.dart';
import '../distribution_viewer_mtls_config/distribution_viewer_mtls_config.dart';

/// The set of arguments for Distribution.
class DistributionArgs {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  final pulumi.Input<List<String>>? aliases;

  /// ID of the Anycast static IP list that is associated with the distribution.
  final pulumi.Input<String>? anycastIpListId;

  /// Any comments you want to include about the distribution.
  final pulumi.Input<String>? comment;

  /// A connection function association configuration block (maximum one).
  final pulumi.Input<DistributionConnectionFunctionAssociation>?
      connectionFunctionAssociation;

  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  final pulumi.Input<String>? continuousDeploymentPolicyId;

  /// One or more custom error response elements (multiples allowed).
  final pulumi.Input<List<DistributionCustomErrorResponse>>?
      customErrorResponses;

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
  final pulumi.Input<List<DistributionOrderedCacheBehavior>>?
      orderedCacheBehaviors;

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
    final map = <String, dynamic>{};
    final aliasesValue = aliases;
    if (aliasesValue != null) {
      map['aliases'] = aliasesValue;
    }
    final anycastIpListIdValue = anycastIpListId;
    if (anycastIpListIdValue != null) {
      map['anycastIpListId'] = anycastIpListIdValue;
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final connectionFunctionAssociationValue = connectionFunctionAssociation;
    if (connectionFunctionAssociationValue != null) {
      map['connectionFunctionAssociation'] = pulumi.Input.mapOptionalInputValue<
              DistributionConnectionFunctionAssociation, Map<String, dynamic>>(
          connectionFunctionAssociationValue, (value) => value.toMap());
    }
    final continuousDeploymentPolicyIdValue = continuousDeploymentPolicyId;
    if (continuousDeploymentPolicyIdValue != null) {
      map['continuousDeploymentPolicyId'] = continuousDeploymentPolicyIdValue;
    }
    final customErrorResponsesValue = customErrorResponses;
    if (customErrorResponsesValue != null) {
      map['customErrorResponses'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionCustomErrorResponse>,
              List<Map<String, dynamic>>>(
          customErrorResponsesValue,
          (value) => pulumi.Input.encodeList<DistributionCustomErrorResponse,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['defaultCacheBehavior'] = pulumi.Input.mapInputValue<
        DistributionDefaultCacheBehavior,
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
    final isIpv6EnabledValue = isIpv6Enabled;
    if (isIpv6EnabledValue != null) {
      map['isIpv6Enabled'] = isIpv6EnabledValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          DistributionLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final orderedCacheBehaviorsValue = orderedCacheBehaviors;
    if (orderedCacheBehaviorsValue != null) {
      map['orderedCacheBehaviors'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionOrderedCacheBehavior>,
              List<Map<String, dynamic>>>(
          orderedCacheBehaviorsValue,
          (value) => pulumi.Input.encodeList<DistributionOrderedCacheBehavior,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final originGroupsValue = originGroups;
    if (originGroupsValue != null) {
      map['originGroups'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionOriginGroup>, List<Map<String, dynamic>>>(
          originGroupsValue,
          (value) => pulumi.Input.encodeList<DistributionOriginGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['origins'] = pulumi.Input.mapInputValue<List<DistributionOrigin>,
            List<Map<String, dynamic>>>(
        origins,
        (value) =>
            pulumi.Input.encodeList<DistributionOrigin, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final priceClassValue = priceClass;
    if (priceClassValue != null) {
      map['priceClass'] = priceClassValue;
    }
    map['restrictions'] = pulumi.Input.mapInputValue<DistributionRestrictions,
        Map<String, dynamic>>(restrictions, (value) => value.toMap());
    final retainOnDeleteValue = retainOnDelete;
    if (retainOnDeleteValue != null) {
      map['retainOnDelete'] = retainOnDeleteValue;
    }
    final stagingValue = staging;
    if (stagingValue != null) {
      map['staging'] = stagingValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['viewerCertificate'] = pulumi.Input.mapInputValue<
        DistributionViewerCertificate,
        Map<String, dynamic>>(viewerCertificate, (value) => value.toMap());
    final viewerMtlsConfigValue = viewerMtlsConfig;
    if (viewerMtlsConfigValue != null) {
      map['viewerMtlsConfig'] = pulumi.Input.mapOptionalInputValue<
              DistributionViewerMtlsConfig, Map<String, dynamic>>(
          viewerMtlsConfigValue, (value) => value.toMap());
    }
    final waitForDeploymentValue = waitForDeployment;
    if (waitForDeploymentValue != null) {
      map['waitForDeployment'] = waitForDeploymentValue;
    }
    final webAclIdValue = webAclId;
    if (webAclIdValue != null) {
      map['webAclId'] = webAclIdValue;
    }
    return map;
  }

  factory DistributionArgs.fromMap(Map<String, dynamic> map) {
    return DistributionArgs(
      aliases: pulumi.Input.asOptionalInput<List<String>>(map['aliases']),
      anycastIpListId:
          pulumi.Input.asOptionalInput<String>(map['anycastIpListId']),
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      connectionFunctionAssociation: pulumi.Input.asOptionalInput<
              DistributionConnectionFunctionAssociation>(
          map['connectionFunctionAssociation']),
      continuousDeploymentPolicyId: pulumi.Input.asOptionalInput<String>(
          map['continuousDeploymentPolicyId']),
      customErrorResponses:
          pulumi.Input.asOptionalInput<List<DistributionCustomErrorResponse>>(
              map['customErrorResponses']),
      defaultCacheBehavior:
          pulumi.Input.asInput<DistributionDefaultCacheBehavior>(
              map['defaultCacheBehavior']),
      defaultRootObject:
          pulumi.Input.asOptionalInput<String>(map['defaultRootObject']),
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      httpVersion: pulumi.Input.asOptionalInput<String>(map['httpVersion']),
      isIpv6Enabled: pulumi.Input.asOptionalInput<bool>(map['isIpv6Enabled']),
      loggingConfig: pulumi.Input.asOptionalInput<DistributionLoggingConfig>(
          map['loggingConfig']),
      orderedCacheBehaviors:
          pulumi.Input.asOptionalInput<List<DistributionOrderedCacheBehavior>>(
              map['orderedCacheBehaviors']),
      originGroups: pulumi.Input.asOptionalInput<List<DistributionOriginGroup>>(
          map['originGroups']),
      origins: pulumi.Input.asInput<List<DistributionOrigin>>(map['origins']),
      priceClass: pulumi.Input.asOptionalInput<String>(map['priceClass']),
      restrictions:
          pulumi.Input.asInput<DistributionRestrictions>(map['restrictions']),
      retainOnDelete: pulumi.Input.asOptionalInput<bool>(map['retainOnDelete']),
      staging: pulumi.Input.asOptionalInput<bool>(map['staging']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      viewerCertificate: pulumi.Input.asInput<DistributionViewerCertificate>(
          map['viewerCertificate']),
      viewerMtlsConfig:
          pulumi.Input.asOptionalInput<DistributionViewerMtlsConfig>(
              map['viewerMtlsConfig']),
      waitForDeployment:
          pulumi.Input.asOptionalInput<bool>(map['waitForDeployment']),
      webAclId: pulumi.Input.asOptionalInput<String>(map['webAclId']),
    );
  }
}
