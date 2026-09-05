// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config_query_strings.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  /// Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `queryStringBehavior` are `none`, `whitelist`, `allExcept`, and `all`.
  final pulumi.Input<String> queryStringBehavior;
  /// Configuration parameter that contains a list of query string names. See Items for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings?>? queryStrings;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig].
  /// [queryStringBehavior] Whether URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `queryStringBehavior` are `none`, `whitelist`, `allExcept`, and `all`.
  /// [queryStrings] Configuration parameter that contains a list of query string names. See Items for more information.
  const CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStringBehavior': queryStringBehavior,
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings, Map<String, dynamic>>(queryStrings, (value) => value.toMap()),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
      queryStringBehavior: pulumi.Input.fromValue(map['queryStringBehavior'] as String),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
