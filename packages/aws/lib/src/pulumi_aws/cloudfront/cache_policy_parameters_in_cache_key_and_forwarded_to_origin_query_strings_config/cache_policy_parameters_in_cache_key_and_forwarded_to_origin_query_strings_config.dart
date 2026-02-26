// ignore_for_file: unused_element, unnecessary_cast

import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_strings/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_strings.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for <span pulumi-lang-nodejs="`queryStringBehavior`" pulumi-lang-dotnet="`QueryStringBehavior`" pulumi-lang-go="`queryStringBehavior`" pulumi-lang-python="`query_string_behavior`" pulumi-lang-yaml="`queryStringBehavior`" pulumi-lang-java="`queryStringBehavior`">`query_string_behavior`</span> are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, `allExcept`, and <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>.
  final String queryStringBehavior;

  /// Configuration parameter that contains a list of query string names. See Items for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings?
      queryStrings;

  CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryStringBehavior'] = queryStringBehavior;
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = queryStringsValue.toMap();
    }
    return map;
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap(
      Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
      queryStringBehavior: map['queryStringBehavior'] as String,
      queryStrings: map['queryStrings'] == null
          ? null
          : CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings
              .fromMap((map['queryStrings'] as Map).cast<String, dynamic>()),
    );
  }
}
