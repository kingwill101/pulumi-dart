// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';

/// Result data returned by getCachePolicy.
class GetCachePolicyResult {
  /// The cache policy ARN.
  final String? arn;
  /// Comment to describe the cache policy.
  final String? comment;
  /// Default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int? defaultTtl;
  /// Current version of the cache policy.
  final String? etag;
  final String? id;
  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int? maxTtl;
  /// Minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  final int? minTtl;
  final String? name;
  /// The HTTP headers, cookies, and URL query strings to include in the cache key. See Parameters In Cache Key And Forwarded To Origin for more information.
  final List<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin>? parametersInCacheKeyAndForwardedToOrigins;

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
  const GetCachePolicyResult({
    this.arn,
    this.comment,
    this.defaultTtl,
    this.etag,
    this.id,
    this.maxTtl,
    this.minTtl,
    this.name,
    this.parametersInCacheKeyAndForwardedToOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'defaultTtl': ?defaultTtl,
      'etag': ?etag,
      'id': ?id,
      'maxTtl': ?maxTtl,
      'minTtl': ?minTtl,
      'name': ?name,
      'parametersInCacheKeyAndForwardedToOrigins': ?(() { final guardedValue = parametersInCacheKeyAndForwardedToOrigins; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCachePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minTtl: (() { final guardedValue = map['minTtl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parametersInCacheKeyAndForwardedToOrigins: (() { final guardedValue = map['parametersInCacheKeyAndForwardedToOrigins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOrigin>(guardedValue, (value) => GetCachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
