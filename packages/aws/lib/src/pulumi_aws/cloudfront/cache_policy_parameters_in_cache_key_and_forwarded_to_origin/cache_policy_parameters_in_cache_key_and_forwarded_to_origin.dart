// ignore_for_file: unused_element, unnecessary_cast

import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config.dart';
import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config.dart';
import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOrigin {
  /// Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig
      cookiesConfig;

  /// Flag determines whether the Accept-Encoding HTTP header is included in the cache key and in requests that CloudFront sends to the origin.
  final bool? enableAcceptEncodingBrotli;

  /// Whether the Accept-Encoding HTTP header is included in the cache key and in requests sent to the origin by CloudFront.
  final bool? enableAcceptEncodingGzip;

  /// Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig
      headersConfig;

  /// Whether any URL query strings in viewer requests are included in the cache key. It also automatically includes these query strings in requests that CloudFront sends to the origin. Please refer to the Query String Config for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig
      queryStringsConfig;

  CachePolicyParametersInCacheKeyAndForwardedToOrigin({
    required this.cookiesConfig,
    this.enableAcceptEncodingBrotli,
    this.enableAcceptEncodingGzip,
    required this.headersConfig,
    required this.queryStringsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookiesConfig'] = cookiesConfig.toMap();
    final enableAcceptEncodingBrotliValue = enableAcceptEncodingBrotli;
    if (enableAcceptEncodingBrotliValue != null) {
      map['enableAcceptEncodingBrotli'] = enableAcceptEncodingBrotliValue;
    }
    final enableAcceptEncodingGzipValue = enableAcceptEncodingGzip;
    if (enableAcceptEncodingGzipValue != null) {
      map['enableAcceptEncodingGzip'] = enableAcceptEncodingGzipValue;
    }
    map['headersConfig'] = headersConfig.toMap();
    map['queryStringsConfig'] = queryStringsConfig.toMap();
    return map;
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap(
      Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOrigin(
      cookiesConfig:
          CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig
              .fromMap((map['cookiesConfig'] as Map).cast<String, dynamic>()),
      enableAcceptEncodingBrotli: map['enableAcceptEncodingBrotli'] == null
          ? null
          : map['enableAcceptEncodingBrotli'] as bool,
      enableAcceptEncodingGzip: map['enableAcceptEncodingGzip'] == null
          ? null
          : map['enableAcceptEncodingGzip'] as bool,
      headersConfig:
          CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig
              .fromMap((map['headersConfig'] as Map).cast<String, dynamic>()),
      queryStringsConfig:
          CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig
              .fromMap(
                  (map['queryStringsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
