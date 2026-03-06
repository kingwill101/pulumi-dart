// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';

/// {@template pulumi_cloudfront_cache_policy_cache_policy_args_doc}
/// The set of arguments for CachePolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_cache_policy_cache_policy_args_doc}
class CachePolicyArgs {
  /// Description for the cache policy.
  final pulumi.Input<String>? comment;
  /// Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  final pulumi.Input<int>? defaultTtl;
  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final pulumi.Input<int>? maxTtl;
  /// Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  final pulumi.Input<int>? minTtl;
  /// Unique name used to identify the cache policy.
  final pulumi.Input<String>? name;
  /// Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOrigin> parametersInCacheKeyAndForwardedToOrigin;

  /// Creates a new [CachePolicyArgs].
  /// [comment] Description for the cache policy.
  /// [defaultTtl] Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  /// [maxTtl] Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  /// [minTtl] Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  /// [name] Unique name used to identify the cache policy.
  /// [parametersInCacheKeyAndForwardedToOrigin] Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  const CachePolicyArgs({
    this.comment,
    this.defaultTtl,
    this.maxTtl,
    this.minTtl,
    this.name,
    required this.parametersInCacheKeyAndForwardedToOrigin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'minTtl': ?minTtl,
      'name': ?name,
      'parametersInCacheKeyAndForwardedToOrigin': pulumi.Input.mapInputValue<CachePolicyParametersInCacheKeyAndForwardedToOrigin, Map<String, dynamic>>(parametersInCacheKeyAndForwardedToOrigin, (value) => value.toMap()),
    };
  }

  factory CachePolicyArgs.fromMap(Map<String, dynamic> map) {
    return CachePolicyArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minTtl: (() { final guardedValue = map['minTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parametersInCacheKeyAndForwardedToOrigin: pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap((map['parametersInCacheKeyAndForwardedToOrigin']! as Map).cast<String, dynamic>())),
    );
  }
}

