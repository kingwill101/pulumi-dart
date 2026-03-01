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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? comment,
    pulumi.Output<int>? defaultTtl,
    pulumi.Output<String>? etag,
    pulumi.Output<int>? maxTtl,
    pulumi.Output<int>? minTtl,
    pulumi.Output<String>? name,
    pulumi.Output<CachePolicyParametersInCacheKeyAndForwardedToOrigin>? parametersInCacheKeyAndForwardedToOrigin,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      defaultTtl = pulumi.Input.asOptionalInput<int>(defaultTtl),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      maxTtl = pulumi.Input.asOptionalInput<int>(maxTtl),
      minTtl = pulumi.Input.asOptionalInput<int>(minTtl),
      name = pulumi.Input.asOptionalInput<String>(name),
      parametersInCacheKeyAndForwardedToOrigin = pulumi.Input.asOptionalInput<CachePolicyParametersInCacheKeyAndForwardedToOrigin>(parametersInCacheKeyAndForwardedToOrigin);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      defaultTtl: map['defaultTtl'] == null ? null : pulumi.Output.create<int>(map['defaultTtl'] as int),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      maxTtl: map['maxTtl'] == null ? null : pulumi.Output.create<int>(map['maxTtl'] as int),
      minTtl: map['minTtl'] == null ? null : pulumi.Output.create<int>(map['minTtl'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parametersInCacheKeyAndForwardedToOrigin: map['parametersInCacheKeyAndForwardedToOrigin'] == null ? null : pulumi.Output.create<CachePolicyParametersInCacheKeyAndForwardedToOrigin>(CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap((map['parametersInCacheKeyAndForwardedToOrigin'] as Map).cast<String, dynamic>())),
    );
  }
}

