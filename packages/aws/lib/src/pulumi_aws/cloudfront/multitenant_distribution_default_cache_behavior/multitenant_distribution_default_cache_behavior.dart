// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_default_cache_behavior_allowed_methods/multitenant_distribution_default_cache_behavior_allowed_methods.dart';
import '../multitenant_distribution_default_cache_behavior_function_association/multitenant_distribution_default_cache_behavior_function_association.dart';
import '../multitenant_distribution_default_cache_behavior_lambda_function_association/multitenant_distribution_default_cache_behavior_lambda_function_association.dart';
import '../multitenant_distribution_default_cache_behavior_trusted_key_groups/multitenant_distribution_default_cache_behavior_trusted_key_groups.dart';

class MultitenantDistributionDefaultCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final MultitenantDistributionDefaultCacheBehaviorAllowedMethods
      allowedMethods;

  /// Unique identifier of the cache policy that is attached to the cache behavior.
  final String? cachePolicyId;

  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  final bool? compress;

  /// Field level encryption configuration ID.
  final String? fieldLevelEncryptionId;

  /// Configuration block for CloudFront Functions associations. See Function Association below.
  final List<MultitenantDistributionDefaultCacheBehaviorFunctionAssociation>?
      functionAssociations;

  /// Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  final List<
          MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation>?
      lambdaFunctionAssociations;

  /// Unique identifier of the origin request policy that is attached to the behavior.
  final String? originRequestPolicyId;

  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final String? realtimeLogConfigArn;

  /// Identifier for a response headers policy.
  final String? responseHeadersPolicyId;

  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final String targetOriginId;

  /// List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  final MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups?
      trustedKeyGroups;

  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final String viewerProtocolPolicy;

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
    final map = <String, dynamic>{};
    map['allowedMethods'] = allowedMethods.toMap();
    final cachePolicyIdValue = cachePolicyId;
    if (cachePolicyIdValue != null) {
      map['cachePolicyId'] = cachePolicyIdValue;
    }
    final compressValue = compress;
    if (compressValue != null) {
      map['compress'] = compressValue;
    }
    final fieldLevelEncryptionIdValue = fieldLevelEncryptionId;
    if (fieldLevelEncryptionIdValue != null) {
      map['fieldLevelEncryptionId'] = fieldLevelEncryptionIdValue;
    }
    final functionAssociationsValue = functionAssociations;
    if (functionAssociationsValue != null) {
      map['functionAssociations'] = Input.encodeList<
              MultitenantDistributionDefaultCacheBehaviorFunctionAssociation,
              Map<String, dynamic>>(
          functionAssociationsValue, (value) => value.toMap());
    }
    final lambdaFunctionAssociationsValue = lambdaFunctionAssociations;
    if (lambdaFunctionAssociationsValue != null) {
      map['lambdaFunctionAssociations'] = Input.encodeList<
              MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation,
              Map<String, dynamic>>(
          lambdaFunctionAssociationsValue, (value) => value.toMap());
    }
    final originRequestPolicyIdValue = originRequestPolicyId;
    if (originRequestPolicyIdValue != null) {
      map['originRequestPolicyId'] = originRequestPolicyIdValue;
    }
    final realtimeLogConfigArnValue = realtimeLogConfigArn;
    if (realtimeLogConfigArnValue != null) {
      map['realtimeLogConfigArn'] = realtimeLogConfigArnValue;
    }
    final responseHeadersPolicyIdValue = responseHeadersPolicyId;
    if (responseHeadersPolicyIdValue != null) {
      map['responseHeadersPolicyId'] = responseHeadersPolicyIdValue;
    }
    map['targetOriginId'] = targetOriginId;
    final trustedKeyGroupsValue = trustedKeyGroups;
    if (trustedKeyGroupsValue != null) {
      map['trustedKeyGroups'] = trustedKeyGroupsValue.toMap();
    }
    map['viewerProtocolPolicy'] = viewerProtocolPolicy;
    return map;
  }

  factory MultitenantDistributionDefaultCacheBehavior.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehavior(
      allowedMethods:
          MultitenantDistributionDefaultCacheBehaviorAllowedMethods.fromMap(
              (map['allowedMethods'] as Map).cast<String, dynamic>()),
      cachePolicyId:
          map['cachePolicyId'] == null ? null : map['cachePolicyId'] as String,
      compress: map['compress'] == null ? null : map['compress'] as bool,
      fieldLevelEncryptionId: map['fieldLevelEncryptionId'] == null
          ? null
          : map['fieldLevelEncryptionId'] as String,
      functionAssociations: map['functionAssociations'] == null
          ? null
          : Input.decodeList<
                  MultitenantDistributionDefaultCacheBehaviorFunctionAssociation>(
              map['functionAssociations'],
              (value) =>
                  MultitenantDistributionDefaultCacheBehaviorFunctionAssociation
                      .fromMap((value as Map).cast<String, dynamic>())),
      lambdaFunctionAssociations: map['lambdaFunctionAssociations'] == null
          ? null
          : Input.decodeList<
                  MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation>(
              map['lambdaFunctionAssociations'],
              (value) =>
                  MultitenantDistributionDefaultCacheBehaviorLambdaFunctionAssociation
                      .fromMap((value as Map).cast<String, dynamic>())),
      originRequestPolicyId: map['originRequestPolicyId'] == null
          ? null
          : map['originRequestPolicyId'] as String,
      realtimeLogConfigArn: map['realtimeLogConfigArn'] == null
          ? null
          : map['realtimeLogConfigArn'] as String,
      responseHeadersPolicyId: map['responseHeadersPolicyId'] == null
          ? null
          : map['responseHeadersPolicyId'] as String,
      targetOriginId: map['targetOriginId'] as String,
      trustedKeyGroups: map['trustedKeyGroups'] == null
          ? null
          : MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups.fromMap(
              (map['trustedKeyGroups'] as Map).cast<String, dynamic>()),
      viewerProtocolPolicy: map['viewerProtocolPolicy'] as String,
    );
  }
}
