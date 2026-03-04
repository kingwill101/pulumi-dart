// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_string.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`, `allExcept`, `all`.
  final pulumi.Input<String> queryStringBehavior;

  /// Object that contains a list of query string names. See Items for more information.
  final pulumi.Input<
    List<
      GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString
    >
  >
  queryStrings;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig].
  /// [queryStringBehavior] Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`, `allExcept`, `all`.
  /// [queryStrings] Object that contains a list of query string names. See Items for more information.
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    required this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStringBehavior': queryStringBehavior,
      'queryStrings':
          pulumi.Input.mapInputValue<
            List<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString
            >,
            List<Map<String, dynamic>>
          >(
            queryStrings,
            (value) =>
                pulumi.Input.encodeList<
                  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
      queryStringBehavior: pulumi.Input.fromValue(
        map['queryStringBehavior'] as String,
      ),
      queryStrings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString
        >(
          map['queryStrings']!,
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
