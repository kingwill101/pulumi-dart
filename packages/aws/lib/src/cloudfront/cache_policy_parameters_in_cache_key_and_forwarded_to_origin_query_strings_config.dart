// ignore_for_file: unused_element, unnecessary_cast

import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_strings.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `query_string_behavior` are `none`, `whitelist`, `allExcept`, and `all`.
  final String queryStringBehavior;

  /// Configuration parameter that contains a list of query string names. See Items for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings?
  queryStrings;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig].
  /// [queryStringBehavior] Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `query_string_behavior` are `none`, `whitelist`, `allExcept`, and `all`.
  /// [queryStrings] Configuration parameter that contains a list of query string names. See Items for more information.
  CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStringBehavior': queryStringBehavior,
      'queryStrings': ?queryStrings == null ? null : queryStrings!.toMap(),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
      queryStringBehavior: map['queryStringBehavior'] as String,
      queryStrings: map['queryStrings'] == null
          ? null
          : CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings.fromMap(
              (map['queryStrings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
