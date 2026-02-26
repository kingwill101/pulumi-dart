// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<List<String>>? aliases;

  /// ID of the Anycast static IP list that is associated with the distribution.
  final Input<String>? anycastIpListId;

  /// Any comments you want to include about the distribution.
  final Input<String>? comment;

  /// A connection function association configuration block (maximum one).
  final Input<DistributionConnectionFunctionAssociation>?
      connectionFunctionAssociation;

  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the <span pulumi-lang-nodejs="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-dotnet="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-go="`cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-python="`cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-yaml="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-java="`aws.cloudfront.ContinuousDeploymentPolicy`">`aws.cloudfront.ContinuousDeploymentPolicy`</span> resource for additional details.
  final Input<String>? continuousDeploymentPolicyId;

  /// One or more custom error response elements (multiples allowed).
  final Input<List<DistributionCustomErrorResponse>>? customErrorResponses;

  /// Default cache behavior for this distribution (maximum one). Requires either <span pulumi-lang-nodejs="`cachePolicyId`" pulumi-lang-dotnet="`CachePolicyId`" pulumi-lang-go="`cachePolicyId`" pulumi-lang-python="`cache_policy_id`" pulumi-lang-yaml="`cachePolicyId`" pulumi-lang-java="`cachePolicyId`">`cache_policy_id`</span> (preferred) or <span pulumi-lang-nodejs="`forwardedValues`" pulumi-lang-dotnet="`ForwardedValues`" pulumi-lang-go="`forwardedValues`" pulumi-lang-python="`forwarded_values`" pulumi-lang-yaml="`forwardedValues`" pulumi-lang-java="`forwardedValues`">`forwarded_values`</span> (deprecated) be set.
  final Input<DistributionDefaultCacheBehavior> defaultCacheBehavior;

  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  final Input<String>? defaultRootObject;

  /// Whether the distribution is enabled to accept end user requests for content.
  final Input<bool> enabled;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>, <span pulumi-lang-nodejs="`http2and3`" pulumi-lang-dotnet="`Http2and3`" pulumi-lang-go="`http2and3`" pulumi-lang-python="`http2and3`" pulumi-lang-yaml="`http2and3`" pulumi-lang-java="`http2and3`">`http2and3`</span> and <span pulumi-lang-nodejs="`http3`" pulumi-lang-dotnet="`Http3`" pulumi-lang-go="`http3`" pulumi-lang-python="`http3`" pulumi-lang-yaml="`http3`" pulumi-lang-java="`http3`">`http3`</span>. The default is <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>.
  final Input<String>? httpVersion;

  /// Whether the IPv6 is enabled for the distribution.
  final Input<bool>? isIpv6Enabled;

  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  final Input<DistributionLoggingConfig>? loggingConfig;

  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  final Input<List<DistributionOrderedCacheBehavior>>? orderedCacheBehaviors;

  /// One or more<span pulumi-lang-nodejs=" originGroup " pulumi-lang-dotnet=" OriginGroup " pulumi-lang-go=" originGroup " pulumi-lang-python=" origin_group " pulumi-lang-yaml=" originGroup " pulumi-lang-java=" originGroup "> origin_group </span>for this distribution (multiples allowed).
  final Input<List<DistributionOriginGroup>>? originGroups;

  /// One or more origins for this distribution (multiples allowed).
  final Input<List<DistributionOrigin>> origins;

  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  final Input<String>? priceClass;

  /// The restriction configuration for this distribution (maximum one).
  final Input<DistributionRestrictions> restrictions;

  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? retainOnDelete;

  /// A Boolean that indicates whether this is a staging distribution. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? staging;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The SSL configuration for this distribution (maximum one).
  final Input<DistributionViewerCertificate> viewerCertificate;

  /// The viewer mTLS configuration for this distribution (maximum one).
  final Input<DistributionViewerMtlsConfig>? viewerMtlsConfig;

  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? waitForDeployment;

  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  final Input<String>? webAclId;

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
      map['connectionFunctionAssociation'] = Input.mapOptionalInputValue<
              DistributionConnectionFunctionAssociation, Map<String, dynamic>>(
          connectionFunctionAssociationValue, (value) => value.toMap());
    }
    final continuousDeploymentPolicyIdValue = continuousDeploymentPolicyId;
    if (continuousDeploymentPolicyIdValue != null) {
      map['continuousDeploymentPolicyId'] = continuousDeploymentPolicyIdValue;
    }
    final customErrorResponsesValue = customErrorResponses;
    if (customErrorResponsesValue != null) {
      map['customErrorResponses'] = Input.mapOptionalInputValue<
              List<DistributionCustomErrorResponse>,
              List<Map<String, dynamic>>>(
          customErrorResponsesValue,
          (value) => Input.encodeList<DistributionCustomErrorResponse,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['defaultCacheBehavior'] = Input.mapInputValue<
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
      map['loggingConfig'] = Input.mapOptionalInputValue<
          DistributionLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final orderedCacheBehaviorsValue = orderedCacheBehaviors;
    if (orderedCacheBehaviorsValue != null) {
      map['orderedCacheBehaviors'] = Input.mapOptionalInputValue<
              List<DistributionOrderedCacheBehavior>,
              List<Map<String, dynamic>>>(
          orderedCacheBehaviorsValue,
          (value) => Input.encodeList<DistributionOrderedCacheBehavior,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final originGroupsValue = originGroups;
    if (originGroupsValue != null) {
      map['originGroups'] = Input.mapOptionalInputValue<
              List<DistributionOriginGroup>, List<Map<String, dynamic>>>(
          originGroupsValue,
          (value) =>
              Input.encodeList<DistributionOriginGroup, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['origins'] = Input.mapInputValue<List<DistributionOrigin>,
            List<Map<String, dynamic>>>(
        origins,
        (value) => Input.encodeList<DistributionOrigin, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final priceClassValue = priceClass;
    if (priceClassValue != null) {
      map['priceClass'] = priceClassValue;
    }
    map['restrictions'] =
        Input.mapInputValue<DistributionRestrictions, Map<String, dynamic>>(
            restrictions, (value) => value.toMap());
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
    map['viewerCertificate'] = Input.mapInputValue<
        DistributionViewerCertificate,
        Map<String, dynamic>>(viewerCertificate, (value) => value.toMap());
    final viewerMtlsConfigValue = viewerMtlsConfig;
    if (viewerMtlsConfigValue != null) {
      map['viewerMtlsConfig'] = Input.mapOptionalInputValue<
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
      aliases: Input.asOptionalInput<List<String>>(map['aliases']),
      anycastIpListId: Input.asOptionalInput<String>(map['anycastIpListId']),
      comment: Input.asOptionalInput<String>(map['comment']),
      connectionFunctionAssociation:
          Input.asOptionalInput<DistributionConnectionFunctionAssociation>(
              map['connectionFunctionAssociation']),
      continuousDeploymentPolicyId:
          Input.asOptionalInput<String>(map['continuousDeploymentPolicyId']),
      customErrorResponses:
          Input.asOptionalInput<List<DistributionCustomErrorResponse>>(
              map['customErrorResponses']),
      defaultCacheBehavior: Input.asInput<DistributionDefaultCacheBehavior>(
          map['defaultCacheBehavior']),
      defaultRootObject:
          Input.asOptionalInput<String>(map['defaultRootObject']),
      enabled: Input.asInput<bool>(map['enabled']),
      httpVersion: Input.asOptionalInput<String>(map['httpVersion']),
      isIpv6Enabled: Input.asOptionalInput<bool>(map['isIpv6Enabled']),
      loggingConfig: Input.asOptionalInput<DistributionLoggingConfig>(
          map['loggingConfig']),
      orderedCacheBehaviors:
          Input.asOptionalInput<List<DistributionOrderedCacheBehavior>>(
              map['orderedCacheBehaviors']),
      originGroups: Input.asOptionalInput<List<DistributionOriginGroup>>(
          map['originGroups']),
      origins: Input.asInput<List<DistributionOrigin>>(map['origins']),
      priceClass: Input.asOptionalInput<String>(map['priceClass']),
      restrictions:
          Input.asInput<DistributionRestrictions>(map['restrictions']),
      retainOnDelete: Input.asOptionalInput<bool>(map['retainOnDelete']),
      staging: Input.asOptionalInput<bool>(map['staging']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      viewerCertificate: Input.asInput<DistributionViewerCertificate>(
          map['viewerCertificate']),
      viewerMtlsConfig: Input.asOptionalInput<DistributionViewerMtlsConfig>(
          map['viewerMtlsConfig']),
      waitForDeployment: Input.asOptionalInput<bool>(map['waitForDeployment']),
      webAclId: Input.asOptionalInput<String>(map['webAclId']),
    );
  }
}
