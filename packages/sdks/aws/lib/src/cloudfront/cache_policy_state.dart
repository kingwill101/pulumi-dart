// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';

/// Input properties used for looking up and filtering CachePolicy resources.
class CachePolicyState {
  /// The cache policy ARN.
  final pulumi.Input<String>? arn;
  /// Description for the cache policy.
  final pulumi.Input<String>? comment;
  /// Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  final pulumi.Input<int>? defaultTtl;
  /// Current version of the cache policy.
  final pulumi.Input<String>? etag;
  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final pulumi.Input<int>? maxTtl;
  /// Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  final pulumi.Input<int>? minTtl;
  /// Unique name used to identify the cache policy.
  final pulumi.Input<String>? name;
  /// Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOrigin>? parametersInCacheKeyAndForwardedToOrigin;

  /// Creates a new [CachePolicyState].
  /// [arn] The cache policy ARN.
  /// [comment] Description for the cache policy.
  /// [defaultTtl] Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  /// [etag] Current version of the cache policy.
  /// [maxTtl] Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  /// [minTtl] Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  /// [name] Unique name used to identify the cache policy.
  /// [parametersInCacheKeyAndForwardedToOrigin] Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  CachePolicyState({
    this.arn,
    this.comment,
    this.defaultTtl,
    this.etag,
    this.maxTtl,
    this.minTtl,
    this.name,
    this.parametersInCacheKeyAndForwardedToOrigin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'defaultTtl': ?defaultTtl,
      'etag': ?etag,
      'maxTtl': ?maxTtl,
      'minTtl': ?minTtl,
      'name': ?name,
      'parametersInCacheKeyAndForwardedToOrigin': ?pulumi.Input.mapOptionalInputValue<CachePolicyParametersInCacheKeyAndForwardedToOrigin, Map<String, dynamic>>(parametersInCacheKeyAndForwardedToOrigin, (value) => value.toMap()),
    };
  }

  factory CachePolicyState.fromMap(Map<String, dynamic> map) {
    return CachePolicyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      defaultTtl: map['defaultTtl'] == null ? null : ((map['defaultTtl'] as int).input()).input(),
      etag: map['etag'] == null ? null : ((map['etag'] as String).input()).input(),
      maxTtl: map['maxTtl'] == null ? null : ((map['maxTtl'] as int).input()).input(),
      minTtl: map['minTtl'] == null ? null : ((map['minTtl'] as int).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parametersInCacheKeyAndForwardedToOrigin: map['parametersInCacheKeyAndForwardedToOrigin'] == null ? null : ((CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap((map['parametersInCacheKeyAndForwardedToOrigin']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

