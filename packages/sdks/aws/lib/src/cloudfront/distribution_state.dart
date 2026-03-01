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
import 'distribution_trusted_key_group.dart';
import 'distribution_trusted_signer.dart';
import 'distribution_viewer_certificate.dart';
import 'distribution_viewer_mtls_config.dart';

/// Input properties used for looking up and filtering Distribution resources.
class DistributionState {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  final pulumi.Input<List<String>>? aliases;
  /// ID of the Anycast static IP list that is associated with the distribution.
  final pulumi.Input<String>? anycastIpListId;
  /// ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  final pulumi.Input<String>? arn;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  final pulumi.Input<String>? callerReference;
  /// Any comments you want to include about the distribution.
  final pulumi.Input<String>? comment;
  /// A connection function association configuration block (maximum one).
  final pulumi.Input<DistributionConnectionFunctionAssociation>? connectionFunctionAssociation;
  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  final pulumi.Input<String>? continuousDeploymentPolicyId;
  /// One or more custom error response elements (multiples allowed).
  final pulumi.Input<List<DistributionCustomErrorResponse>>? customErrorResponses;
  /// Default cache behavior for this distribution (maximum one). Requires either `cache_policy_id` (preferred) or `forwarded_values` (deprecated) be set.
  final pulumi.Input<DistributionDefaultCacheBehavior>? defaultCacheBehavior;
  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  final pulumi.Input<String>? defaultRootObject;
  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  final pulumi.Input<String>? domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool>? enabled;
  /// Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  final pulumi.Input<String>? etag;
  /// CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  final pulumi.Input<String>? hostedZoneId;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  final pulumi.Input<String>? httpVersion;
  /// Number of invalidation batches currently in progress.
  final pulumi.Input<int>? inProgressValidationBatches;
  /// Whether the IPv6 is enabled for the distribution.
  final pulumi.Input<bool>? isIpv6Enabled;
  /// Date and time the distribution was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  final pulumi.Input<DistributionLoggingConfig>? loggingConfig;
  /// Whether V1 logging is enabled for the distribution.
  final pulumi.Input<bool>? loggingV1Enabled;
  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  final pulumi.Input<List<DistributionOrderedCacheBehavior>>? orderedCacheBehaviors;
  /// One or more origin_group for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOriginGroup>>? originGroups;
  /// One or more origins for this distribution (multiples allowed).
  final pulumi.Input<List<DistributionOrigin>>? origins;
  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  final pulumi.Input<String>? priceClass;
  /// The restriction configuration for this distribution (maximum one).
  final pulumi.Input<DistributionRestrictions>? restrictions;
  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  final pulumi.Input<bool>? retainOnDelete;
  /// A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  final pulumi.Input<bool>? staging;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<DistributionTrustedKeyGroup>>? trustedKeyGroups;
  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<DistributionTrustedSigner>>? trustedSigners;
  /// The SSL configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerCertificate>? viewerCertificate;
  /// The viewer mTLS configuration for this distribution (maximum one).
  final pulumi.Input<DistributionViewerMtlsConfig>? viewerMtlsConfig;
  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForDeployment;
  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  final pulumi.Input<String>? webAclId;

  /// Creates a new [DistributionState].
  /// [aliases] Extra CNAMEs (alternate domain names), if any, for this distribution.
  /// [anycastIpListId] ID of the Anycast static IP list that is associated with the distribution.
  /// [arn] ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  /// [callerReference] Internal value used by CloudFront to allow future updates to the distribution configuration.
  /// [comment] Any comments you want to include about the distribution.
  /// [connectionFunctionAssociation] A connection function association configuration block (maximum one).
  /// [continuousDeploymentPolicyId] Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  /// [customErrorResponses] One or more custom error response elements (multiples allowed).
  /// [defaultCacheBehavior] Default cache behavior for this distribution (maximum one). Requires either `cache_policy_id` (preferred) or `forwarded_values` (deprecated) be set.
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
  /// [originGroups] One or more origin_group for this distribution (multiples allowed).
  /// [origins] One or more origins for this distribution (multiples allowed).
  /// [priceClass] Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  /// [restrictions] The restriction configuration for this distribution (maximum one).
  /// [retainOnDelete] Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  /// [staging] A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  /// [status] Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trustedKeyGroups] List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  /// [trustedSigners] List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  /// [viewerCertificate] The SSL configuration for this distribution (maximum one).
  /// [viewerMtlsConfig] The viewer mTLS configuration for this distribution (maximum one).
  /// [waitForDeployment] If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  /// [webAclId] Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  DistributionState({
    pulumi.Output<List<String>>? aliases,
    pulumi.Output<String>? anycastIpListId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? callerReference,
    pulumi.Output<String>? comment,
    pulumi.Output<DistributionConnectionFunctionAssociation>? connectionFunctionAssociation,
    pulumi.Output<String>? continuousDeploymentPolicyId,
    pulumi.Output<List<DistributionCustomErrorResponse>>? customErrorResponses,
    pulumi.Output<DistributionDefaultCacheBehavior>? defaultCacheBehavior,
    pulumi.Output<String>? defaultRootObject,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? httpVersion,
    pulumi.Output<int>? inProgressValidationBatches,
    pulumi.Output<bool>? isIpv6Enabled,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<DistributionLoggingConfig>? loggingConfig,
    pulumi.Output<bool>? loggingV1Enabled,
    pulumi.Output<List<DistributionOrderedCacheBehavior>>? orderedCacheBehaviors,
    pulumi.Output<List<DistributionOriginGroup>>? originGroups,
    pulumi.Output<List<DistributionOrigin>>? origins,
    pulumi.Output<String>? priceClass,
    pulumi.Output<DistributionRestrictions>? restrictions,
    pulumi.Output<bool>? retainOnDelete,
    pulumi.Output<bool>? staging,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<DistributionTrustedKeyGroup>>? trustedKeyGroups,
    pulumi.Output<List<DistributionTrustedSigner>>? trustedSigners,
    pulumi.Output<DistributionViewerCertificate>? viewerCertificate,
    pulumi.Output<DistributionViewerMtlsConfig>? viewerMtlsConfig,
    pulumi.Output<bool>? waitForDeployment,
    pulumi.Output<String>? webAclId,
  }) :
      aliases = pulumi.Input.asOptionalInput<List<String>>(aliases),
      anycastIpListId = pulumi.Input.asOptionalInput<String>(anycastIpListId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      callerReference = pulumi.Input.asOptionalInput<String>(callerReference),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      connectionFunctionAssociation = pulumi.Input.asOptionalInput<DistributionConnectionFunctionAssociation>(connectionFunctionAssociation),
      continuousDeploymentPolicyId = pulumi.Input.asOptionalInput<String>(continuousDeploymentPolicyId),
      customErrorResponses = pulumi.Input.asOptionalInput<List<DistributionCustomErrorResponse>>(customErrorResponses),
      defaultCacheBehavior = pulumi.Input.asOptionalInput<DistributionDefaultCacheBehavior>(defaultCacheBehavior),
      defaultRootObject = pulumi.Input.asOptionalInput<String>(defaultRootObject),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      httpVersion = pulumi.Input.asOptionalInput<String>(httpVersion),
      inProgressValidationBatches = pulumi.Input.asOptionalInput<int>(inProgressValidationBatches),
      isIpv6Enabled = pulumi.Input.asOptionalInput<bool>(isIpv6Enabled),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      loggingConfig = pulumi.Input.asOptionalInput<DistributionLoggingConfig>(loggingConfig),
      loggingV1Enabled = pulumi.Input.asOptionalInput<bool>(loggingV1Enabled),
      orderedCacheBehaviors = pulumi.Input.asOptionalInput<List<DistributionOrderedCacheBehavior>>(orderedCacheBehaviors),
      originGroups = pulumi.Input.asOptionalInput<List<DistributionOriginGroup>>(originGroups),
      origins = pulumi.Input.asOptionalInput<List<DistributionOrigin>>(origins),
      priceClass = pulumi.Input.asOptionalInput<String>(priceClass),
      restrictions = pulumi.Input.asOptionalInput<DistributionRestrictions>(restrictions),
      retainOnDelete = pulumi.Input.asOptionalInput<bool>(retainOnDelete),
      staging = pulumi.Input.asOptionalInput<bool>(staging),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trustedKeyGroups = pulumi.Input.asOptionalInput<List<DistributionTrustedKeyGroup>>(trustedKeyGroups),
      trustedSigners = pulumi.Input.asOptionalInput<List<DistributionTrustedSigner>>(trustedSigners),
      viewerCertificate = pulumi.Input.asOptionalInput<DistributionViewerCertificate>(viewerCertificate),
      viewerMtlsConfig = pulumi.Input.asOptionalInput<DistributionViewerMtlsConfig>(viewerMtlsConfig),
      waitForDeployment = pulumi.Input.asOptionalInput<bool>(waitForDeployment),
      webAclId = pulumi.Input.asOptionalInput<String>(webAclId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'anycastIpListId': ?anycastIpListId,
      'arn': ?arn,
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
      aliases: map['aliases'] == null ? null : pulumi.Output.create<List<String>>((map['aliases'] as List).cast<String>()),
      anycastIpListId: map['anycastIpListId'] == null ? null : pulumi.Output.create<String>(map['anycastIpListId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      callerReference: map['callerReference'] == null ? null : pulumi.Output.create<String>(map['callerReference'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      connectionFunctionAssociation: map['connectionFunctionAssociation'] == null ? null : pulumi.Output.create<DistributionConnectionFunctionAssociation>(DistributionConnectionFunctionAssociation.fromMap((map['connectionFunctionAssociation'] as Map).cast<String, dynamic>())),
      continuousDeploymentPolicyId: map['continuousDeploymentPolicyId'] == null ? null : pulumi.Output.create<String>(map['continuousDeploymentPolicyId'] as String),
      customErrorResponses: map['customErrorResponses'] == null ? null : pulumi.Output.create<List<DistributionCustomErrorResponse>>(pulumi.Input.decodeList<DistributionCustomErrorResponse>(map['customErrorResponses'], (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      defaultCacheBehavior: map['defaultCacheBehavior'] == null ? null : pulumi.Output.create<DistributionDefaultCacheBehavior>(DistributionDefaultCacheBehavior.fromMap((map['defaultCacheBehavior'] as Map).cast<String, dynamic>())),
      defaultRootObject: map['defaultRootObject'] == null ? null : pulumi.Output.create<String>(map['defaultRootObject'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      httpVersion: map['httpVersion'] == null ? null : pulumi.Output.create<String>(map['httpVersion'] as String),
      inProgressValidationBatches: map['inProgressValidationBatches'] == null ? null : pulumi.Output.create<int>(map['inProgressValidationBatches'] as int),
      isIpv6Enabled: map['isIpv6Enabled'] == null ? null : pulumi.Output.create<bool>(map['isIpv6Enabled'] as bool),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<DistributionLoggingConfig>(DistributionLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      loggingV1Enabled: map['loggingV1Enabled'] == null ? null : pulumi.Output.create<bool>(map['loggingV1Enabled'] as bool),
      orderedCacheBehaviors: map['orderedCacheBehaviors'] == null ? null : pulumi.Output.create<List<DistributionOrderedCacheBehavior>>(pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(map['orderedCacheBehaviors'], (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>()))),
      originGroups: map['originGroups'] == null ? null : pulumi.Output.create<List<DistributionOriginGroup>>(pulumi.Input.decodeList<DistributionOriginGroup>(map['originGroups'], (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>()))),
      origins: map['origins'] == null ? null : pulumi.Output.create<List<DistributionOrigin>>(pulumi.Input.decodeList<DistributionOrigin>(map['origins'], (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      priceClass: map['priceClass'] == null ? null : pulumi.Output.create<String>(map['priceClass'] as String),
      restrictions: map['restrictions'] == null ? null : pulumi.Output.create<DistributionRestrictions>(DistributionRestrictions.fromMap((map['restrictions'] as Map).cast<String, dynamic>())),
      retainOnDelete: map['retainOnDelete'] == null ? null : pulumi.Output.create<bool>(map['retainOnDelete'] as bool),
      staging: map['staging'] == null ? null : pulumi.Output.create<bool>(map['staging'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trustedKeyGroups: map['trustedKeyGroups'] == null ? null : pulumi.Output.create<List<DistributionTrustedKeyGroup>>(pulumi.Input.decodeList<DistributionTrustedKeyGroup>(map['trustedKeyGroups'], (value) => DistributionTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>()))),
      trustedSigners: map['trustedSigners'] == null ? null : pulumi.Output.create<List<DistributionTrustedSigner>>(pulumi.Input.decodeList<DistributionTrustedSigner>(map['trustedSigners'], (value) => DistributionTrustedSigner.fromMap((value as Map).cast<String, dynamic>()))),
      viewerCertificate: map['viewerCertificate'] == null ? null : pulumi.Output.create<DistributionViewerCertificate>(DistributionViewerCertificate.fromMap((map['viewerCertificate'] as Map).cast<String, dynamic>())),
      viewerMtlsConfig: map['viewerMtlsConfig'] == null ? null : pulumi.Output.create<DistributionViewerMtlsConfig>(DistributionViewerMtlsConfig.fromMap((map['viewerMtlsConfig'] as Map).cast<String, dynamic>())),
      waitForDeployment: map['waitForDeployment'] == null ? null : pulumi.Output.create<bool>(map['waitForDeployment'] as bool),
      webAclId: map['webAclId'] == null ? null : pulumi.Output.create<String>(map['webAclId'] as String),
    );
  }
}

