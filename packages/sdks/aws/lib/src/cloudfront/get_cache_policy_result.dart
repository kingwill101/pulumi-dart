// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';

/// Result data returned by getCachePolicy.
class GetCachePolicyResult {
  /// The cache policy ARN.
  final String arn;
  /// Comment to describe the cache policy.
  final String comment;
  /// Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int defaultTtl;
  /// Current version of the cache policy.
  final String etag;
  final String? id;
  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int maxTtl;
  /// Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int minTtl;
  final String? name;
  /// The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.
  final List<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin> parametersInCacheKeyAndForwardedToOrigins;

  /// Creates a new [GetCachePolicyResult].
  /// [arn] The cache policy ARN.
  /// [comment] Comment to describe the cache policy.
  /// [defaultTtl] Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  /// [etag] Current version of the cache policy.
  /// [id] Optional.
  /// [maxTtl] Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  /// [minTtl] Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  /// [name] Optional.
  /// [parametersInCacheKeyAndForwardedToOrigins] The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.
  GetCachePolicyResult({
    required this.arn,
    required this.comment,
    required this.defaultTtl,
    required this.etag,
    this.id,
    required this.maxTtl,
    required this.minTtl,
    this.name,
    required this.parametersInCacheKeyAndForwardedToOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'comment': comment,
      'defaultTtl': defaultTtl,
      'etag': etag,
      'id': ?id,
      'maxTtl': maxTtl,
      'minTtl': minTtl,
      'name': ?name,
      'parametersInCacheKeyAndForwardedToOrigins': pulumi.Input.encodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin, Map<String, dynamic>>(parametersInCacheKeyAndForwardedToOrigins, (value) => value.toMap()),
    };
  }

  factory GetCachePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyResult(
      arn: map['arn'] as String,
      comment: map['comment'] as String,
      defaultTtl: map['defaultTtl'] as int,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      maxTtl: map['maxTtl'] as int,
      minTtl: map['minTtl'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      parametersInCacheKeyAndForwardedToOrigins: pulumi.Input.decodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin>(map['parametersInCacheKeyAndForwardedToOrigins']!, (value) => GetCachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

