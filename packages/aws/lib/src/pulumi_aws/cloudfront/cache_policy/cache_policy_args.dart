// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin/cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';

/// The set of arguments for CachePolicy.
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
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOrigin>
      parametersInCacheKeyAndForwardedToOrigin;

  CachePolicyArgs({
    this.comment,
    this.defaultTtl,
    this.maxTtl,
    this.minTtl,
    this.name,
    required this.parametersInCacheKeyAndForwardedToOrigin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final defaultTtlValue = defaultTtl;
    if (defaultTtlValue != null) {
      map['defaultTtl'] = defaultTtlValue;
    }
    final maxTtlValue = maxTtl;
    if (maxTtlValue != null) {
      map['maxTtl'] = maxTtlValue;
    }
    final minTtlValue = minTtl;
    if (minTtlValue != null) {
      map['minTtl'] = minTtlValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parametersInCacheKeyAndForwardedToOrigin'] =
        pulumi.Input.mapInputValue<
                CachePolicyParametersInCacheKeyAndForwardedToOrigin,
                Map<String, dynamic>>(
            parametersInCacheKeyAndForwardedToOrigin, (value) => value.toMap());
    return map;
  }

  factory CachePolicyArgs.fromMap(Map<String, dynamic> map) {
    return CachePolicyArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      defaultTtl: pulumi.Input.asOptionalInput<int>(map['defaultTtl']),
      maxTtl: pulumi.Input.asOptionalInput<int>(map['maxTtl']),
      minTtl: pulumi.Input.asOptionalInput<int>(map['minTtl']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parametersInCacheKeyAndForwardedToOrigin: pulumi.Input.asInput<
              CachePolicyParametersInCacheKeyAndForwardedToOrigin>(
          map['parametersInCacheKeyAndForwardedToOrigin']),
    );
  }
}
