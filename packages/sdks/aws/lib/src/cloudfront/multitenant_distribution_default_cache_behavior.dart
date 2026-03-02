// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_default_cache_behavior_allowed_methods.dart';
import 'multitenant_distribution_default_cache_behavior_function_association.dart';
import 'multitenant_distribution_default_cache_behavior_lambda_function_association.dart';
import 'multitenant_distribution_default_cache_behavior_trusted_key_groups.dart';

class MultitenantDistributionDefaultCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final pulumi.Input<MultitenantDistributionDefaultCacheBehaviorAllowedMethods> allowedMethods;
  /// Unique identifier of the cache policy that is attached to the cache behavior.
  final pulumi.Input<String>? cachePolicyId;
  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  final pulumi.Input<bool>? compress;
  /// Field level encryption configuration ID.
  final pulumi.Input<String>? fieldLevelEncryptionId;
  /// Configuration block for CloudFront Functions associations. See Function Association below.
  final pulumi.Input<List<MultitenantDistributionDefaultCacheBehaviorFunctionAssociation>>? functionAssociations;
  /// Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  final pulumi.Input<List<MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation>>? lambdaFunctionAssociations;
  /// Unique identifier of the origin request policy that is attached to the behavior.
  final pulumi.Input<String>? originRequestPolicyId;
  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final pulumi.Input<String>? realtimeLogConfigArn;
  /// Identifier for a response headers policy.
  final pulumi.Input<String>? responseHeadersPolicyId;
  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final pulumi.Input<String> targetOriginId;
  /// List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  final pulumi.Input<MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups>? trustedKeyGroups;
  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final pulumi.Input<String> viewerProtocolPolicy;

  /// Creates a new [MultitenantDistributionDefaultCacheBehavior].
  /// [allowedMethods] Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  /// [cachePolicyId] Unique identifier of the cache policy that is attached to the cache behavior.
  /// [compress] Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  /// [fieldLevelEncryptionId] Field level encryption configuration ID.
  /// [functionAssociations] Configuration block for CloudFront Functions associations. See Function Association below.
  /// [lambdaFunctionAssociations] Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  /// [originRequestPolicyId] Unique identifier of the origin request policy that is attached to the behavior.
  /// [realtimeLogConfigArn] ARN of the real-time log configuration that is attached to this cache behavior.
  /// [responseHeadersPolicyId] Identifier for a response headers policy.
  /// [targetOriginId] Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  /// [trustedKeyGroups] List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  /// [viewerProtocolPolicy] Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  MultitenantDistributionDefaultCacheBehavior({
    required this.allowedMethods,
    this.cachePolicyId,
    this.compress,
    this.fieldLevelEncryptionId,
    this.functionAssociations,
    this.lambdaFunctionAssociations,
    this.originRequestPolicyId,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    required this.targetOriginId,
    this.trustedKeyGroups,
    required this.viewerProtocolPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMethods': pulumi.Input.mapInputValue<MultitenantDistributionDefaultCacheBehaviorAllowedMethods, Map<String, dynamic>>(allowedMethods, (value) => value.toMap()),
      'cachePolicyId': ?cachePolicyId,
      'compress': ?compress,
      'fieldLevelEncryptionId': ?fieldLevelEncryptionId,
      'functionAssociations': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionDefaultCacheBehaviorFunctionAssociation>, List<Map<String, dynamic>>>(functionAssociations, (value) => pulumi.Input.encodeList<MultitenantDistributionDefaultCacheBehaviorFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lambdaFunctionAssociations': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation>, List<Map<String, dynamic>>>(lambdaFunctionAssociations, (value) => pulumi.Input.encodeList<MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originRequestPolicyId': ?originRequestPolicyId,
      'realtimeLogConfigArn': ?realtimeLogConfigArn,
      'responseHeadersPolicyId': ?responseHeadersPolicyId,
      'targetOriginId': targetOriginId,
      'trustedKeyGroups': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups, Map<String, dynamic>>(trustedKeyGroups, (value) => value.toMap()),
      'viewerProtocolPolicy': viewerProtocolPolicy,
    };
  }

  factory MultitenantDistributionDefaultCacheBehavior.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehavior(
      allowedMethods: (MultitenantDistributionDefaultCacheBehaviorAllowedMethods.fromMap((map['allowedMethods']! as Map).cast<String, dynamic>())).input(),
      cachePolicyId: map['cachePolicyId'] == null ? null : ((map['cachePolicyId'] as String).input()).input(),
      compress: map['compress'] == null ? null : ((map['compress'] as bool).input()).input(),
      fieldLevelEncryptionId: map['fieldLevelEncryptionId'] == null ? null : ((map['fieldLevelEncryptionId'] as String).input()).input(),
      functionAssociations: map['functionAssociations'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionDefaultCacheBehaviorFunctionAssociation>(map['functionAssociations']!, (value) => MultitenantDistributionDefaultCacheBehaviorFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lambdaFunctionAssociations: map['lambdaFunctionAssociations'] == null ? null : ((pulumi.Input.decodeList<MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation>(map['lambdaFunctionAssociations']!, (value) => MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      originRequestPolicyId: map['originRequestPolicyId'] == null ? null : ((map['originRequestPolicyId'] as String).input()).input(),
      realtimeLogConfigArn: map['realtimeLogConfigArn'] == null ? null : ((map['realtimeLogConfigArn'] as String).input()).input(),
      responseHeadersPolicyId: map['responseHeadersPolicyId'] == null ? null : ((map['responseHeadersPolicyId'] as String).input()).input(),
      targetOriginId: (map['targetOriginId'] as String).input(),
      trustedKeyGroups: map['trustedKeyGroups'] == null ? null : ((MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups.fromMap((map['trustedKeyGroups']! as Map).cast<String, dynamic>())).input()).input(),
      viewerProtocolPolicy: (map['viewerProtocolPolicy'] as String).input(),
    );
  }
}

