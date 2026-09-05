// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_cache_tag_config.dart';
import 'distribution_connection_function_association.dart';
import 'distribution_custom_error_response.dart';
import 'distribution_default_cache_behavior.dart';
import 'distribution_logging_config.dart';
import 'distribution_ordered_cache_behavior.dart';
import 'distribution_origin.dart';
import 'distribution_origin_group.dart';
import 'distribution_restrictions.dart';
import 'distribution_trusted_key_group.dart';
import 'distribution_trusted_signer.dart';
import 'distribution_viewer_certificate.dart';
import 'distribution_viewer_mtls_config.dart';

/// Input properties used for looking up and filtering Distribution resources.
class DistributionState {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  final pulumi.Input<List<String>?>? aliases;
  /// ID of the Anycast static IP list that is associated with the distribution.
  final pulumi.Input<String?>? anycastIpListId;
  /// ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  final pulumi.Input<String?>? arn;
  /// Cache tag configuration block for cache tag extraction from origin responses (maximum one). See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/invalidation-by-tags.html) for more information about cache tags.
  final pulumi.Input<DistributionCacheTagConfig?>? cacheTagConfig;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  final pulumi.Input<String?>? callerReference;
  /// Any comments you want to include about the distribution.
  final pulumi.Input<String?>? comment;
  /// A connection function association configuration block (maximum one).
  final pulumi.Input<DistributionConnectionFunctionAssociation?>? connectionFunctionAssociation;
  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  final pulumi.Input<String?>? continuousDeploymentPolicyId;
  /// One or more custom error response elements (multiples allowed).
  final pulumi.Input<List<DistributionCustomErrorResponse>?>? customErrorResponses;
  /// Default cache behavior for this distribution (maximum one). Requires either `cachePolicyId` (preferred) or `forwardedValues` (deprecated) be set.
  final pulumi.Input<DistributionDefaultCacheBehavior?>? defaultCacheBehavior;
  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  final pulumi.Input<String?>? defaultRootObject;
  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  final pulumi.Input<String?>? domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool?>? enabled;
  /// Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  final pulumi.Input<String?>? etag;
  /// CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  final pulumi.Input<String?>? hostedZoneId;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  final pulumi.Input<String?>? httpVersion;
  /// Number of invalidation batches currently in progress.
  final pulumi.Input<int?>? inProgressValidationBatches;
  /// Whether the IPv6 is enabled for the distribution.
  final pulumi.Input<bool?>? isIpv6Enabled;
  /// Date and time the distribution was last modified.
  final pulumi.Input<String?>? lastModifiedTime;
  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  final pulumi.Input<DistributionLoggingConfig?>? loggingConfig;
  /// Whether V1 logging is enabled for the distribution.
  final pulumi.Input<bool?>? loggingV1Enabled;
  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  final pulumi.Input<List<DistributionOrderedCacheBehavior>?>? orderedCacheBehaviors;
  /// One or more originGroup for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOriginGroup>?>? originGroups;
  /// One or more origins for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOrigin>?>? origins;
  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  final pulumi.Input<String?>? priceClass;
  /// The restriction configuration for this distribution (maximum one).
  final pulumi.Input<DistributionRestrictions?>? restrictions;
  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  final pulumi.Input<bool?>? retainOnDelete;
  /// A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  final pulumi.Input<bool?>? staging;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  final pulumi.Input<String?>? status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<DistributionTrustedKeyGroup>?>? trustedKeyGroups;
  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<DistributionTrustedSigner>?>? trustedSigners;
  /// The SSL configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerCertificate?>? viewerCertificate;
  /// The viewer mTLS configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerMtlsConfig?>? viewerMtlsConfig;
  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  final pulumi.Input<bool?>? waitForDeployment;
  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  final pulumi.Input<String?>? webAclId;

  /// Creates a new [DistributionState].
  /// [aliases] Extra CNAMEs (alternate domain names), if any, for this distribution.
  /// [anycastIpListId] ID of the Anycast static IP list that is associated with the distribution.
  /// [arn] ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  /// [cacheTagConfig] Cache tag configuration block for cache tag extraction from origin responses (maximum one). See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/invalidation-by-tags.html) for more information about cache tags.
  /// [callerReference] Internal value used by CloudFront to allow future updates to the distribution configuration.
  /// [comment] Any comments you want to include about the distribution.
  /// [connectionFunctionAssociation] A connection function association configuration block (maximum one).
  /// [continuousDeploymentPolicyId] Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  /// [customErrorResponses] One or more custom error response elements (multiples allowed).
  /// [defaultCacheBehavior] Default cache behavior for this distribution (maximum one). Requires either `cachePolicyId` (preferred) or `forwardedValues` (deprecated) be set.
  /// [defaultRootObject] Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  /// [domainName] Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [etag] Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  /// [hostedZoneId] CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  /// [httpVersion] Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  /// [inProgressValidationBatches] Number of invalidation batches currently in progress.
  /// [isIpv6Enabled] Whether the IPv6 is enabled for the distribution.
  /// [lastModifiedTime] Date and time the distribution was last modified.
  /// [loggingConfig] The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  /// [loggingV1Enabled] Whether V1 logging is enabled for the distribution.
  /// [orderedCacheBehaviors] Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  /// [originGroups] One or more originGroup for this distribution (multiples allowed).
  /// [origins] One or more origins for this distribution (multiples allowed).
  /// [priceClass] Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  /// [restrictions] The restriction configuration for this distribution (maximum one).
  /// [retainOnDelete] Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  /// [staging] A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  /// [status] Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [trustedKeyGroups] List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  /// [trustedSigners] List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  /// [viewerCertificate] The SSL configuration for this distribution (maximum one).
  /// [viewerMtlsConfig] The viewer mTLS configuration for this distribution (maximum one).
  /// [waitForDeployment] If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  /// [webAclId] Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  const DistributionState({
    this.aliases,
    this.anycastIpListId,
    this.arn,
    this.cacheTagConfig,
    this.callerReference,
    this.comment,
    this.connectionFunctionAssociation,
    this.continuousDeploymentPolicyId,
    this.customErrorResponses,
    this.defaultCacheBehavior,
    this.defaultRootObject,
    this.domainName,
    this.enabled,
    this.etag,
    this.hostedZoneId,
    this.httpVersion,
    this.inProgressValidationBatches,
    this.isIpv6Enabled,
    this.lastModifiedTime,
    this.loggingConfig,
    this.loggingV1Enabled,
    this.orderedCacheBehaviors,
    this.originGroups,
    this.origins,
    this.priceClass,
    this.restrictions,
    this.retainOnDelete,
    this.staging,
    this.status,
    this.tags,
    this.tagsAll,
    this.trustedKeyGroups,
    this.trustedSigners,
    this.viewerCertificate,
    this.viewerMtlsConfig,
    this.waitForDeployment,
    this.webAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'anycastIpListId': ?anycastIpListId,
      'arn': ?arn,
      'cacheTagConfig': ?pulumi.Input.mapOptionalInputValue<DistributionCacheTagConfig, Map<String, dynamic>>(cacheTagConfig, (value) => value.toMap()),
      'callerReference': ?callerReference,
      'comment': ?comment,
      'connectionFunctionAssociation': ?pulumi.Input.mapOptionalInputValue<DistributionConnectionFunctionAssociation, Map<String, dynamic>>(connectionFunctionAssociation, (value) => value.toMap()),
      'continuousDeploymentPolicyId': ?continuousDeploymentPolicyId,
      'customErrorResponses': ?pulumi.Input.mapOptionalInputValue<List<DistributionCustomErrorResponse>, List<Map<String, dynamic>>>(customErrorResponses, (value) => pulumi.Input.encodeList<DistributionCustomErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCacheBehavior': ?pulumi.Input.mapOptionalInputValue<DistributionDefaultCacheBehavior, Map<String, dynamic>>(defaultCacheBehavior, (value) => value.toMap()),
      'defaultRootObject': ?defaultRootObject,
      'domainName': ?domainName,
      'enabled': ?enabled,
      'etag': ?etag,
      'hostedZoneId': ?hostedZoneId,
      'httpVersion': ?httpVersion,
      'inProgressValidationBatches': ?inProgressValidationBatches,
      'isIpv6Enabled': ?isIpv6Enabled,
      'lastModifiedTime': ?lastModifiedTime,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<DistributionLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'loggingV1Enabled': ?loggingV1Enabled,
      'orderedCacheBehaviors': ?pulumi.Input.mapOptionalInputValue<List<DistributionOrderedCacheBehavior>, List<Map<String, dynamic>>>(orderedCacheBehaviors, (value) => pulumi.Input.encodeList<DistributionOrderedCacheBehavior, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originGroups': ?pulumi.Input.mapOptionalInputValue<List<DistributionOriginGroup>, List<Map<String, dynamic>>>(originGroups, (value) => pulumi.Input.encodeList<DistributionOriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'origins': ?pulumi.Input.mapOptionalInputValue<List<DistributionOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<DistributionOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priceClass': ?priceClass,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<DistributionRestrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
      'retainOnDelete': ?retainOnDelete,
      'staging': ?staging,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trustedKeyGroups': ?pulumi.Input.mapOptionalInputValue<List<DistributionTrustedKeyGroup>, List<Map<String, dynamic>>>(trustedKeyGroups, (value) => pulumi.Input.encodeList<DistributionTrustedKeyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedSigners': ?pulumi.Input.mapOptionalInputValue<List<DistributionTrustedSigner>, List<Map<String, dynamic>>>(trustedSigners, (value) => pulumi.Input.encodeList<DistributionTrustedSigner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'viewerCertificate': ?pulumi.Input.mapOptionalInputValue<DistributionViewerCertificate, Map<String, dynamic>>(viewerCertificate, (value) => value.toMap()),
      'viewerMtlsConfig': ?pulumi.Input.mapOptionalInputValue<DistributionViewerMtlsConfig, Map<String, dynamic>>(viewerMtlsConfig, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
      'webAclId': ?webAclId,
    };
  }

  factory DistributionState.fromMap(Map<String, dynamic> map) {
    return DistributionState(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheTagConfig: (() { final guardedValue = map['cacheTagConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionCacheTagConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      callerReference: (() { final guardedValue = map['callerReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionFunctionAssociation: (() { final guardedValue = map['connectionFunctionAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConnectionFunctionAssociation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousDeploymentPolicyId: (() { final guardedValue = map['continuousDeploymentPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customErrorResponses: (() { final guardedValue = map['customErrorResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionCustomErrorResponse>(guardedValue, (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultCacheBehavior: (() { final guardedValue = map['defaultCacheBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRootObject: (() { final guardedValue = map['defaultRootObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inProgressValidationBatches: (() { final guardedValue = map['inProgressValidationBatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      isIpv6Enabled: (() { final guardedValue = map['isIpv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingV1Enabled: (() { final guardedValue = map['loggingV1Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      orderedCacheBehaviors: (() { final guardedValue = map['orderedCacheBehaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(guardedValue, (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originGroups: (() { final guardedValue = map['originGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOriginGroup>(guardedValue, (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionOrigin>(guardedValue, (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priceClass: (() { final guardedValue = map['priceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictions: (() { final guardedValue = map['restrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retainOnDelete: (() { final guardedValue = map['retainOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      staging: (() { final guardedValue = map['staging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedKeyGroups: (() { final guardedValue = map['trustedKeyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionTrustedKeyGroup>(guardedValue, (value) => DistributionTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustedSigners: (() { final guardedValue = map['trustedSigners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionTrustedSigner>(guardedValue, (value) => DistributionTrustedSigner.fromMap((value as Map).cast<String, dynamic>()))); })(),
      viewerCertificate: (() { final guardedValue = map['viewerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      viewerMtlsConfig: (() { final guardedValue = map['viewerMtlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionViewerMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForDeployment: (() { final guardedValue = map['waitForDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webAclId: (() { final guardedValue = map['webAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
