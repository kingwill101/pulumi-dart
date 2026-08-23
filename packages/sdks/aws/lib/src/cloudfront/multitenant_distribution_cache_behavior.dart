// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_cache_behavior_allowed_methods.dart';
import 'multitenant_distribution_cache_behavior_function_association.dart';
import 'multitenant_distribution_cache_behavior_lambda_function_association.dart';
import 'multitenant_distribution_cache_behavior_trusted_key_groups.dart';

class MultitenantDistributionCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final pulumi.Input<MultitenantDistributionCacheBehaviorAllowedMethods> allowedMethods;
  /// Unique identifier of the cache policy that is attached to the cache behavior.
  final pulumi.Input<String>? cachePolicyId;
  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  final pulumi.Input<bool>? compress;
  /// Field level encryption configuration ID.
  final pulumi.Input<String>? fieldLevelEncryptionId;
  /// Configuration block for CloudFront Functions associations. See Function Association below.
  final pulumi.Input<List<MultitenantDistributionCacheBehaviorFunctionAssociation>>? functionAssociations;
  /// Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  final pulumi.Input<List<MultitenantDistributionCacheBehaviorLambdaFunctionAssociation>>? lambdaFunctionAssociations;
  /// Unique identifier of the origin request policy that is attached to the behavior.
  final pulumi.Input<String>? originRequestPolicyId;
  /// Pattern that specifies which requests you want this cache behavior to apply to.
  final pulumi.Input<String> pathPattern;
  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final pulumi.Input<String>? realtimeLogConfigArn;
  /// Identifier for a response headers policy.
  final pulumi.Input<String>? responseHeadersPolicyId;
  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final pulumi.Input<String> targetOriginId;
  /// List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  final pulumi.Input<MultitenantDistributionCacheBehaviorTrustedKeyGroups>? trustedKeyGroups;
  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final pulumi.Input<String> viewerProtocolPolicy;

  /// Creates a new [MultitenantDistributionCacheBehavior].
  /// [allowedMethods] Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  /// [cachePolicyId] Unique identifier of the cache policy that is attached to the cache behavior.
  /// [compress] Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  /// [fieldLevelEncryptionId] Field level encryption configuration ID.
  /// [functionAssociations] Configuration block for CloudFront Functions associations. See Function Association below.
  /// [lambdaFunctionAssociations] Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  /// [originRequestPolicyId] Unique identifier of the origin request policy that is attached to the behavior.
  /// [pathPattern] Pattern that specifies which requests you want this cache behavior to apply to.
  /// [realtimeLogConfigArn] ARN of the real-time log configuration that is attached to this cache behavior.
  /// [responseHeadersPolicyId] Identifier for a response headers policy.
  /// [targetOriginId] Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  /// [trustedKeyGroups] List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  /// [viewerProtocolPolicy] Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  const MultitenantDistributionCacheBehavior({
    required this.allowedMethods,
    this.cachePolicyId,
    this.compress,
    this.fieldLevelEncryptionId,
    this.functionAssociations,
    this.lambdaFunctionAssociations,
    this.originRequestPolicyId,
    required this.pathPattern,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    required this.targetOriginId,
    this.trustedKeyGroups,
    required this.viewerProtocolPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMethods': pulumi.Input.mapInputValue<MultitenantDistributionCacheBehaviorAllowedMethods, Map<String, dynamic>>(allowedMethods, (value) => value.toMap()),
      'cachePolicyId': ?cachePolicyId,
      'compress': ?compress,
      'fieldLevelEncryptionId': ?fieldLevelEncryptionId,
      'functionAssociations': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionCacheBehaviorFunctionAssociation>, List<Map<String, dynamic>>>(functionAssociations, (value) => pulumi.Input.encodeList<MultitenantDistributionCacheBehaviorFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lambdaFunctionAssociations': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionCacheBehaviorLambdaFunctionAssociation>, List<Map<String, dynamic>>>(lambdaFunctionAssociations, (value) => pulumi.Input.encodeList<MultitenantDistributionCacheBehaviorLambdaFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originRequestPolicyId': ?originRequestPolicyId,
      'pathPattern': pathPattern,
      'realtimeLogConfigArn': ?realtimeLogConfigArn,
      'responseHeadersPolicyId': ?responseHeadersPolicyId,
      'targetOriginId': targetOriginId,
      'trustedKeyGroups': ?pulumi.Input.mapOptionalInputValue<MultitenantDistributionCacheBehaviorTrustedKeyGroups, Map<String, dynamic>>(trustedKeyGroups, (value) => value.toMap()),
      'viewerProtocolPolicy': viewerProtocolPolicy,
    };
  }

  factory MultitenantDistributionCacheBehavior.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehavior(
      allowedMethods: pulumi.Input.fromValue(MultitenantDistributionCacheBehaviorAllowedMethods.fromMap((map['allowedMethods']! as Map).cast<String, dynamic>())),
      cachePolicyId: (() { final guardedValue = map['cachePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compress: (() { final guardedValue = map['compress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fieldLevelEncryptionId: (() { final guardedValue = map['fieldLevelEncryptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionAssociations: (() { final guardedValue = map['functionAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionCacheBehaviorFunctionAssociation>(guardedValue, (value) => MultitenantDistributionCacheBehaviorFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lambdaFunctionAssociations: (() { final guardedValue = map['lambdaFunctionAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionCacheBehaviorLambdaFunctionAssociation>(guardedValue, (value) => MultitenantDistributionCacheBehaviorLambdaFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originRequestPolicyId: (() { final guardedValue = map['originRequestPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPattern: pulumi.Input.fromValue(map['pathPattern'] as String),
      realtimeLogConfigArn: (() { final guardedValue = map['realtimeLogConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseHeadersPolicyId: (() { final guardedValue = map['responseHeadersPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetOriginId: pulumi.Input.fromValue(map['targetOriginId'] as String),
      trustedKeyGroups: (() { final guardedValue = map['trustedKeyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultitenantDistributionCacheBehaviorTrustedKeyGroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      viewerProtocolPolicy: pulumi.Input.fromValue(map['viewerProtocolPolicy'] as String),
    );
  }
}
