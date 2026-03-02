// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_ordered_cache_behavior_forwarded_values.dart';
import 'distribution_ordered_cache_behavior_function_association.dart';
import 'distribution_ordered_cache_behavior_grpc_config.dart';
import 'distribution_ordered_cache_behavior_lambda_function_association.dart';

class DistributionOrderedCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final pulumi.Input<List<String>> allowedMethods;
  /// Unique identifier of the cache policy that is attached to the cache behavior. If configuring the `default_cache_behavior` either `cache_policy_id` or `forwarded_values` must be set.
  final pulumi.Input<String>? cachePolicyId;
  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final pulumi.Input<List<String>> cachedMethods;
  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header (default: `false`).
  final pulumi.Input<bool>? compress;
  /// Default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an `Cache-Control max-age` or `Expires` header. The TTL defined in Cache Policy overrides this configuration.
  final pulumi.Input<int>? defaultTtl;
  /// Field level encryption configuration ID.
  final pulumi.Input<String>? fieldLevelEncryptionId;
  /// The forwarded values configuration that specifies how CloudFront handles query strings, cookies and headers (maximum one).
  final pulumi.Input<DistributionOrderedCacheBehaviorForwardedValues>? forwardedValues;
  /// A config block that triggers a cloudfront function with specific actions (maximum 2).
  final pulumi.Input<List<DistributionOrderedCacheBehaviorFunctionAssociation>>? functionAssociations;
  /// A config block that sets the grpc config.
  final pulumi.Input<DistributionOrderedCacheBehaviorGrpcConfig>? grpcConfig;
  /// A config block that triggers a lambda function with specific actions (maximum 4).
  final pulumi.Input<List<DistributionOrderedCacheBehaviorLambdaFunctionAssociation>>? lambdaFunctionAssociations;
  /// Maximum amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated. Only effective in the presence of `Cache-Control max-age`, `Cache-Control s-maxage`, and `Expires` headers. The TTL defined in Cache Policy overrides this configuration.
  final pulumi.Input<int>? maxTtl;
  /// Minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. Defaults to 0 seconds. The TTL defined in Cache Policy overrides this configuration.
  final pulumi.Input<int>? minTtl;
  /// Unique identifier of the origin request policy that is attached to the behavior.
  final pulumi.Input<String>? originRequestPolicyId;
  /// Pattern (for example, `images/*.jpg`) that specifies which requests you want this cache behavior to apply to.
  final pulumi.Input<String> pathPattern;
  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final pulumi.Input<String>? realtimeLogConfigArn;
  /// Identifier for a response headers policy.
  final pulumi.Input<String>? responseHeadersPolicyId;
  /// Indicates whether you want to distribute media files in Microsoft Smooth Streaming format using the origin that is associated with this cache behavior.
  final pulumi.Input<bool>? smoothStreaming;
  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final pulumi.Input<String> targetOriginId;
  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<String>>? trustedKeyGroups;
  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  final pulumi.Input<List<String>>? trustedSigners;
  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final pulumi.Input<String> viewerProtocolPolicy;

  /// Creates a new [DistributionOrderedCacheBehavior].
  /// [allowedMethods] Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  /// [cachePolicyId] Unique identifier of the cache policy that is attached to the cache behavior. If configuring the `default_cache_behavior` either `cache_policy_id` or `forwarded_values` must be set.
  /// [cachedMethods] Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  /// [compress] Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header (default: `false`).
  /// [defaultTtl] Default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an `Cache-Control max-age` or `Expires` header. The TTL defined in Cache Policy overrides this configuration.
  /// [fieldLevelEncryptionId] Field level encryption configuration ID.
  /// [forwardedValues] The forwarded values configuration that specifies how CloudFront handles query strings, cookies and headers (maximum one).
  /// [functionAssociations] A config block that triggers a cloudfront function with specific actions (maximum 2).
  /// [grpcConfig] A config block that sets the grpc config.
  /// [lambdaFunctionAssociations] A config block that triggers a lambda function with specific actions (maximum 4).
  /// [maxTtl] Maximum amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated. Only effective in the presence of `Cache-Control max-age`, `Cache-Control s-maxage`, and `Expires` headers. The TTL defined in Cache Policy overrides this configuration.
  /// [minTtl] Minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. Defaults to 0 seconds. The TTL defined in Cache Policy overrides this configuration.
  /// [originRequestPolicyId] Unique identifier of the origin request policy that is attached to the behavior.
  /// [pathPattern] Pattern (for example, `images/*.jpg`) that specifies which requests you want this cache behavior to apply to.
  /// [realtimeLogConfigArn] ARN of the real-time log configuration that is attached to this cache behavior.
  /// [responseHeadersPolicyId] Identifier for a response headers policy.
  /// [smoothStreaming] Indicates whether you want to distribute media files in Microsoft Smooth Streaming format using the origin that is associated with this cache behavior.
  /// [targetOriginId] Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  /// [trustedKeyGroups] List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  /// [trustedSigners] List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  /// [viewerProtocolPolicy] Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  DistributionOrderedCacheBehavior({
    required this.allowedMethods,
    this.cachePolicyId,
    required this.cachedMethods,
    this.compress,
    this.defaultTtl,
    this.fieldLevelEncryptionId,
    this.forwardedValues,
    this.functionAssociations,
    this.grpcConfig,
    this.lambdaFunctionAssociations,
    this.maxTtl,
    this.minTtl,
    this.originRequestPolicyId,
    required this.pathPattern,
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    this.smoothStreaming,
    required this.targetOriginId,
    this.trustedKeyGroups,
    this.trustedSigners,
    required this.viewerProtocolPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMethods': allowedMethods,
      'cachePolicyId': ?cachePolicyId,
      'cachedMethods': cachedMethods,
      'compress': ?compress,
      'defaultTtl': ?defaultTtl,
      'fieldLevelEncryptionId': ?fieldLevelEncryptionId,
      'forwardedValues': ?pulumi.Input.mapOptionalInputValue<DistributionOrderedCacheBehaviorForwardedValues, Map<String, dynamic>>(forwardedValues, (value) => value.toMap()),
      'functionAssociations': ?pulumi.Input.mapOptionalInputValue<List<DistributionOrderedCacheBehaviorFunctionAssociation>, List<Map<String, dynamic>>>(functionAssociations, (value) => pulumi.Input.encodeList<DistributionOrderedCacheBehaviorFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'grpcConfig': ?pulumi.Input.mapOptionalInputValue<DistributionOrderedCacheBehaviorGrpcConfig, Map<String, dynamic>>(grpcConfig, (value) => value.toMap()),
      'lambdaFunctionAssociations': ?pulumi.Input.mapOptionalInputValue<List<DistributionOrderedCacheBehaviorLambdaFunctionAssociation>, List<Map<String, dynamic>>>(lambdaFunctionAssociations, (value) => pulumi.Input.encodeList<DistributionOrderedCacheBehaviorLambdaFunctionAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTtl': ?maxTtl,
      'minTtl': ?minTtl,
      'originRequestPolicyId': ?originRequestPolicyId,
      'pathPattern': pathPattern,
      'realtimeLogConfigArn': ?realtimeLogConfigArn,
      'responseHeadersPolicyId': ?responseHeadersPolicyId,
      'smoothStreaming': ?smoothStreaming,
      'targetOriginId': targetOriginId,
      'trustedKeyGroups': ?trustedKeyGroups,
      'trustedSigners': ?trustedSigners,
      'viewerProtocolPolicy': viewerProtocolPolicy,
    };
  }

  factory DistributionOrderedCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionOrderedCacheBehavior(
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      cachePolicyId: map['cachePolicyId'] == null ? null : (map['cachePolicyId'] as String).input(),
      cachedMethods: ((map['cachedMethods'] as List).cast<String>()).input(),
      compress: map['compress'] == null ? null : (map['compress'] as bool).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl'] as int).input(),
      fieldLevelEncryptionId: map['fieldLevelEncryptionId'] == null ? null : (map['fieldLevelEncryptionId'] as String).input(),
      forwardedValues: map['forwardedValues'] == null ? null : (DistributionOrderedCacheBehaviorForwardedValues.fromMap((map['forwardedValues'] as Map).cast<String, dynamic>())).input(),
      functionAssociations: map['functionAssociations'] == null ? null : (pulumi.Input.decodeList<DistributionOrderedCacheBehaviorFunctionAssociation>(map['functionAssociations'], (value) => DistributionOrderedCacheBehaviorFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      grpcConfig: map['grpcConfig'] == null ? null : (DistributionOrderedCacheBehaviorGrpcConfig.fromMap((map['grpcConfig'] as Map).cast<String, dynamic>())).input(),
      lambdaFunctionAssociations: map['lambdaFunctionAssociations'] == null ? null : (pulumi.Input.decodeList<DistributionOrderedCacheBehaviorLambdaFunctionAssociation>(map['lambdaFunctionAssociations'], (value) => DistributionOrderedCacheBehaviorLambdaFunctionAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTtl: map['maxTtl'] == null ? null : (map['maxTtl'] as int).input(),
      minTtl: map['minTtl'] == null ? null : (map['minTtl'] as int).input(),
      originRequestPolicyId: map['originRequestPolicyId'] == null ? null : (map['originRequestPolicyId'] as String).input(),
      pathPattern: (map['pathPattern'] as String).input(),
      realtimeLogConfigArn: map['realtimeLogConfigArn'] == null ? null : (map['realtimeLogConfigArn'] as String).input(),
      responseHeadersPolicyId: map['responseHeadersPolicyId'] == null ? null : (map['responseHeadersPolicyId'] as String).input(),
      smoothStreaming: map['smoothStreaming'] == null ? null : (map['smoothStreaming'] as bool).input(),
      targetOriginId: (map['targetOriginId'] as String).input(),
      trustedKeyGroups: map['trustedKeyGroups'] == null ? null : ((map['trustedKeyGroups'] as List).cast<String>()).input(),
      trustedSigners: map['trustedSigners'] == null ? null : ((map['trustedSigners'] as List).cast<String>()).input(),
      viewerProtocolPolicy: (map['viewerProtocolPolicy'] as String).input(),
    );
  }
}

