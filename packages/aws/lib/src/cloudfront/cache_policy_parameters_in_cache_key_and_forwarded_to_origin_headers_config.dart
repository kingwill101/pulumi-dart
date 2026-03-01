// ignore_for_file: unused_element, unnecessary_cast

import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_headers.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`.
  final String? headerBehavior;

  /// Object contains a list of header names. See Items for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders?
  headers;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig].
  /// [headerBehavior] Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`.
  /// [headers] Object contains a list of header names. See Items for more information.
  CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerBehavior': ?headerBehavior,
      'headers': ?headers == null ? null : headers!.toMap(),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: map['headerBehavior'] == null
          ? null
          : map['headerBehavior'] as String,
      headers: map['headers'] == null
          ? null
          : CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders.fromMap(
              (map['headers'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
