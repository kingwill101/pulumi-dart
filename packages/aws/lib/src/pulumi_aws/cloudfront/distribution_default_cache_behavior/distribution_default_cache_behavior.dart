// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_default_cache_behavior_forwarded_values/distribution_default_cache_behavior_forwarded_values.dart';
import '../distribution_default_cache_behavior_function_association/distribution_default_cache_behavior_function_association.dart';
import '../distribution_default_cache_behavior_grpc_config/distribution_default_cache_behavior_grpc_config.dart';
import '../distribution_default_cache_behavior_lambda_function_association/distribution_default_cache_behavior_lambda_function_association.dart';

class DistributionDefaultCacheBehavior {
  /// Controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin.
  final List<String> allowedMethods;

  /// Unique identifier of the cache policy that is attached to the cache behavior. If configuring the <span pulumi-lang-nodejs="`defaultCacheBehavior`" pulumi-lang-dotnet="`DefaultCacheBehavior`" pulumi-lang-go="`defaultCacheBehavior`" pulumi-lang-python="`default_cache_behavior`" pulumi-lang-yaml="`defaultCacheBehavior`" pulumi-lang-java="`defaultCacheBehavior`">`default_cache_behavior`</span> either <span pulumi-lang-nodejs="`cachePolicyId`" pulumi-lang-dotnet="`CachePolicyId`" pulumi-lang-go="`cachePolicyId`" pulumi-lang-python="`cache_policy_id`" pulumi-lang-yaml="`cachePolicyId`" pulumi-lang-java="`cachePolicyId`">`cache_policy_id`</span> or <span pulumi-lang-nodejs="`forwardedValues`" pulumi-lang-dotnet="`ForwardedValues`" pulumi-lang-go="`forwardedValues`" pulumi-lang-python="`forwarded_values`" pulumi-lang-yaml="`forwardedValues`" pulumi-lang-java="`forwardedValues`">`forwarded_values`</span> must be set.
  final String? cachePolicyId;

  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final List<String> cachedMethods;

  /// Whether you want CloudFront to automatically compress content for web requests that include `Accept-Encoding: gzip` in the request header (default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>).
  final bool? compress;

  /// Default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an `Cache-Control max-age` or `Expires` header. The TTL defined in Cache Policy overrides this configuration.
  final int? defaultTtl;

  /// Field level encryption configuration ID.
  final String? fieldLevelEncryptionId;

  /// The forwarded values configuration that specifies how CloudFront handles query strings, cookies and headers (maximum one).
  final DistributionDefaultCacheBehaviorForwardedValues? forwardedValues;

  /// A config block that triggers a cloudfront function with specific actions (maximum 2).
  final List<DistributionDefaultCacheBehaviorFunctionAssociation>?
      functionAssociations;

  /// A config block that sets the grpc config.
  final DistributionDefaultCacheBehaviorGrpcConfig? grpcConfig;

  /// A config block that triggers a lambda function with specific actions (maximum 4).
  final List<DistributionDefaultCacheBehaviorLambdaFunctionAssociation>?
      lambdaFunctionAssociations;

  /// Maximum amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated. Only effective in the presence of `Cache-Control max-age`, `Cache-Control s-maxage`, and `Expires` headers. The TTL defined in Cache Policy overrides this configuration.
  final int? maxTtl;

  /// Minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated. Defaults to 0 seconds. The TTL defined in Cache Policy overrides this configuration.
  final int? minTtl;

  /// Unique identifier of the origin request policy that is attached to the behavior.
  final String? originRequestPolicyId;

  /// ARN of the real-time log configuration that is attached to this cache behavior.
  final String? realtimeLogConfigArn;

  /// Identifier for a response headers policy.
  final String? responseHeadersPolicyId;

  /// Indicates whether you want to distribute media files in Microsoft Smooth Streaming format using the origin that is associated with this cache behavior.
  final bool? smoothStreaming;

  /// Value of ID for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.
  final String targetOriginId;

  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  final List<String>? trustedKeyGroups;

  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  final List<String>? trustedSigners;

  /// Use this element to specify the protocol that users can use to access the files in the origin specified by TargetOriginId when a request matches the path pattern in PathPattern. One of `allow-all`, `https-only`, or `redirect-to-https`.
  final String viewerProtocolPolicy;

  DistributionDefaultCacheBehavior({
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
    this.realtimeLogConfigArn,
    this.responseHeadersPolicyId,
    this.smoothStreaming,
    required this.targetOriginId,
    this.trustedKeyGroups,
    this.trustedSigners,
    required this.viewerProtocolPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedMethods'] = allowedMethods;
    final cachePolicyIdValue = cachePolicyId;
    if (cachePolicyIdValue != null) {
      map['cachePolicyId'] = cachePolicyIdValue;
    }
    map['cachedMethods'] = cachedMethods;
    final compressValue = compress;
    if (compressValue != null) {
      map['compress'] = compressValue;
    }
    final defaultTtlValue = defaultTtl;
    if (defaultTtlValue != null) {
      map['defaultTtl'] = defaultTtlValue;
    }
    final fieldLevelEncryptionIdValue = fieldLevelEncryptionId;
    if (fieldLevelEncryptionIdValue != null) {
      map['fieldLevelEncryptionId'] = fieldLevelEncryptionIdValue;
    }
    final forwardedValuesValue = forwardedValues;
    if (forwardedValuesValue != null) {
      map['forwardedValues'] = forwardedValuesValue.toMap();
    }
    final functionAssociationsValue = functionAssociations;
    if (functionAssociationsValue != null) {
      map['functionAssociations'] = Input.encodeList<
              DistributionDefaultCacheBehaviorFunctionAssociation,
              Map<String, dynamic>>(
          functionAssociationsValue, (value) => value.toMap());
    }
    final grpcConfigValue = grpcConfig;
    if (grpcConfigValue != null) {
      map['grpcConfig'] = grpcConfigValue.toMap();
    }
    final lambdaFunctionAssociationsValue = lambdaFunctionAssociations;
    if (lambdaFunctionAssociationsValue != null) {
      map['lambdaFunctionAssociations'] = Input.encodeList<
              DistributionDefaultCacheBehaviorLambdaFunctionAssociation,
              Map<String, dynamic>>(
          lambdaFunctionAssociationsValue, (value) => value.toMap());
    }
    final maxTtlValue = maxTtl;
    if (maxTtlValue != null) {
      map['maxTtl'] = maxTtlValue;
    }
    final minTtlValue = minTtl;
    if (minTtlValue != null) {
      map['minTtl'] = minTtlValue;
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
    final smoothStreamingValue = smoothStreaming;
    if (smoothStreamingValue != null) {
      map['smoothStreaming'] = smoothStreamingValue;
    }
    map['targetOriginId'] = targetOriginId;
    final trustedKeyGroupsValue = trustedKeyGroups;
    if (trustedKeyGroupsValue != null) {
      map['trustedKeyGroups'] = trustedKeyGroupsValue;
    }
    final trustedSignersValue = trustedSigners;
    if (trustedSignersValue != null) {
      map['trustedSigners'] = trustedSignersValue;
    }
    map['viewerProtocolPolicy'] = viewerProtocolPolicy;
    return map;
  }

  factory DistributionDefaultCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehavior(
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      cachePolicyId:
          map['cachePolicyId'] == null ? null : map['cachePolicyId'] as String,
      cachedMethods: (map['cachedMethods'] as List).cast<String>(),
      compress: map['compress'] == null ? null : map['compress'] as bool,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      fieldLevelEncryptionId: map['fieldLevelEncryptionId'] == null
          ? null
          : map['fieldLevelEncryptionId'] as String,
      forwardedValues: map['forwardedValues'] == null
          ? null
          : DistributionDefaultCacheBehaviorForwardedValues.fromMap(
              (map['forwardedValues'] as Map).cast<String, dynamic>()),
      functionAssociations: map['functionAssociations'] == null
          ? null
          : Input.decodeList<
                  DistributionDefaultCacheBehaviorFunctionAssociation>(
              map['functionAssociations'],
              (value) =>
                  DistributionDefaultCacheBehaviorFunctionAssociation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      grpcConfig: map['grpcConfig'] == null
          ? null
          : DistributionDefaultCacheBehaviorGrpcConfig.fromMap(
              (map['grpcConfig'] as Map).cast<String, dynamic>()),
      lambdaFunctionAssociations: map['lambdaFunctionAssociations'] == null
          ? null
          : Input.decodeList<
                  DistributionDefaultCacheBehaviorLambdaFunctionAssociation>(
              map['lambdaFunctionAssociations'],
              (value) =>
                  DistributionDefaultCacheBehaviorLambdaFunctionAssociation
                      .fromMap((value as Map).cast<String, dynamic>())),
      maxTtl: map['maxTtl'] == null ? null : map['maxTtl'] as int,
      minTtl: map['minTtl'] == null ? null : map['minTtl'] as int,
      originRequestPolicyId: map['originRequestPolicyId'] == null
          ? null
          : map['originRequestPolicyId'] as String,
      realtimeLogConfigArn: map['realtimeLogConfigArn'] == null
          ? null
          : map['realtimeLogConfigArn'] as String,
      responseHeadersPolicyId: map['responseHeadersPolicyId'] == null
          ? null
          : map['responseHeadersPolicyId'] as String,
      smoothStreaming: map['smoothStreaming'] == null
          ? null
          : map['smoothStreaming'] as bool,
      targetOriginId: map['targetOriginId'] as String,
      trustedKeyGroups: map['trustedKeyGroups'] == null
          ? null
          : (map['trustedKeyGroups'] as List).cast<String>(),
      trustedSigners: map['trustedSigners'] == null
          ? null
          : (map['trustedSigners'] as List).cast<String>(),
      viewerProtocolPolicy: map['viewerProtocolPolicy'] as String,
    );
  }
}
