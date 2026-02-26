// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_string/get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_string.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, `allExcept`, <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>.
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
