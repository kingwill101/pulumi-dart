// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_string/get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_string.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`, `allExcept`, `all`.
  final String queryStringBehavior;

  /// Object that contains a list of query string names. See Items for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString>
      queryStrings;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    required this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryStringBehavior'] = queryStringBehavior;
    map['queryStrings'] = Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString,
        Map<String, dynamic>>(queryStrings, (value) => value.toMap());
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
      queryStringBehavior: map['queryStringBehavior'] as String,
      queryStrings: Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString>(
          map['queryStrings'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
