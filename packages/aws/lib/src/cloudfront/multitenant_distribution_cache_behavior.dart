// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_cache_behavior_allowed_methods.dart';
import 'multitenant_distribution_cache_behavior_function_association.dart';
import 'multitenant_distribution_cache_behavior_lambda_function_association.dart';
import 'multitenant_distribution_cache_behavior_trusted_key_groups.dart';

class MultitenantDistributionCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final MultitenantDistributionCacheBehaviorAllowedMethods allowedMethods;

  /// Unique identifier of the cache policy that is attached to the cache behavior.
  final String? cachePolicyId;

  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header. Default: `false`.
  final bool? compress;

  /// Field level encryption configuration ID.
  final String? fieldLevelEncryptionId;

  /// Configuration block for CloudFront Functions associations. See Function Association below.
  final List<MultitenantDistributionCacheBehaviorFunctionAssociation>?
  functionAssociations;

  /// Configuration block for Lambda@Edge associations. See Lambda Function Association below.
  final List<MultitenantDistributionCacheBehaviorLambdaFunctionAssociation>?
  lambdaFunctionAssociations;

  /// Unique identifier of the origin request policy that is attached to the behavior.
  final String? originRequestPolicyId;

  /// Pattern that specifies which requests you want this cache behavior to apply to.
  final String pathPattern;

  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final String? realtimeLogConfigArn;

  /// Identifier for a response headers policy.
  final String? responseHeadersPolicyId;

  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final String targetOriginId;

  /// List of key group IDs that CloudFront can use to validate signed URLs or signed cookies.
  final MultitenantDistributionCacheBehaviorTrustedKeyGroups? trustedKeyGroups;

  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final String viewerProtocolPolicy;

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
  MultitenantDistributionCacheBehavior({
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
      'allowedMethods': allowedMethods.toMap(),
      'cachePolicyId': ?cachePolicyId,
      'compress': ?compress,
      'fieldLevelEncryptionId': ?fieldLevelEncryptionId,
      'functionAssociations': ?functionAssociations == null
          ? null
          : pulumi.Input.encodeList<
              MultitenantDistributionCacheBehaviorFunctionAssociation,
              Map<String, dynamic>
            >(functionAssociations!, (value) => value.toMap()),
      'lambdaFunctionAssociations': ?lambdaFunctionAssociations == null
          ? null
          : pulumi.Input.encodeList<
              MultitenantDistributionCacheBehaviorLambdaFunctionAssociation,
              Map<String, dynamic>
            >(lambdaFunctionAssociations!, (value) => value.toMap()),
      'originRequestPolicyId': ?originRequestPolicyId,
      'pathPattern': pathPattern,
      'realtimeLogConfigArn': ?realtimeLogConfigArn,
      'responseHeadersPolicyId': ?responseHeadersPolicyId,
      'targetOriginId': targetOriginId,
      'trustedKeyGroups': ?trustedKeyGroups == null
          ? null
          : trustedKeyGroups!.toMap(),
      'viewerProtocolPolicy': viewerProtocolPolicy,
    };
  }

  factory MultitenantDistributionCacheBehavior.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionCacheBehavior(
      allowedMethods:
          MultitenantDistributionCacheBehaviorAllowedMethods.fromMap(
            (map['allowedMethods'] as Map).cast<String, dynamic>(),
          ),
      cachePolicyId: map['cachePolicyId'] == null
          ? null
          : map['cachePolicyId'] as String,
      compress: map['compress'] == null ? null : map['compress'] as bool,
      fieldLevelEncryptionId: map['fieldLevelEncryptionId'] == null
          ? null
          : map['fieldLevelEncryptionId'] as String,
      functionAssociations: map['functionAssociations'] == null
          ? null
          : pulumi.Input.decodeList<
              MultitenantDistributionCacheBehaviorFunctionAssociation
            >(
              map['functionAssociations'],
              (value) =>
                  MultitenantDistributionCacheBehaviorFunctionAssociation.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      lambdaFunctionAssociations: map['lambdaFunctionAssociations'] == null
          ? null
          : pulumi.Input.decodeList<
              MultitenantDistributionCacheBehaviorLambdaFunctionAssociation
            >(
              map['lambdaFunctionAssociations'],
              (value) =>
                  MultitenantDistributionCacheBehaviorLambdaFunctionAssociation.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      originRequestPolicyId: map['originRequestPolicyId'] == null
          ? null
          : map['originRequestPolicyId'] as String,
      pathPattern: map['pathPattern'] as String,
      realtimeLogConfigArn: map['realtimeLogConfigArn'] == null
          ? null
          : map['realtimeLogConfigArn'] as String,
      responseHeadersPolicyId: map['responseHeadersPolicyId'] == null
          ? null
          : map['responseHeadersPolicyId'] as String,
      targetOriginId: map['targetOriginId'] as String,
      trustedKeyGroups: map['trustedKeyGroups'] == null
          ? null
          : MultitenantDistributionCacheBehaviorTrustedKeyGroups.fromMap(
              (map['trustedKeyGroups'] as Map).cast<String, dynamic>(),
            ),
      viewerProtocolPolicy: map['viewerProtocolPolicy'] as String,
    );
  }
}
