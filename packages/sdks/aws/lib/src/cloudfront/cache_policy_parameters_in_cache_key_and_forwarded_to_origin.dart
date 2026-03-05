// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config.dart';
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config.dart';
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOrigin {
  /// Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig> cookiesConfig;
  /// Flag determines whether the Accept-Encoding HTTP header is included in the cache key and in requests that CloudFront sends to the origin.
  final pulumi.Input<bool>? enableAcceptEncodingBrotli;
  /// Whether the Accept-Encoding HTTP header is included in the cache key and in requests sent to the origin by CloudFront.
  final pulumi.Input<bool>? enableAcceptEncodingGzip;
  /// Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig> headersConfig;
  /// Whether any URL query strings in viewer requests are included in the cache key. It also automatically includes these query strings in requests that CloudFront sends to the origin. Please refer to the Query String Config for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig> queryStringsConfig;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOrigin].
  /// [cookiesConfig] Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  /// [enableAcceptEncodingBrotli] Flag determines whether the Accept-Encoding HTTP header is included in the cache key and in requests that CloudFront sends to the origin.
  /// [enableAcceptEncodingGzip] Whether the Accept-Encoding HTTP header is included in the cache key and in requests sent to the origin by CloudFront.
  /// [headersConfig] Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  /// [queryStringsConfig] Whether any URL query strings in viewer requests are included in the cache key. It also automatically includes these query strings in requests that CloudFront sends to the origin. Please refer to the Query String Config for more information.
  CachePolicyParametersInCacheKeyAndForwardedToOrigin({
    required this.cookiesConfig,
    this.enableAcceptEncodingBrotli,
    this.enableAcceptEncodingGzip,
    required this.headersConfig,
    required this.queryStringsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookiesConfig': pulumi.Input.mapInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig, Map<String, dynamic>>(cookiesConfig, (value) => value.toMap()),
      'enableAcceptEncodingBrotli': ?enableAcceptEncodingBrotli,
      'enableAcceptEncodingGzip': ?enableAcceptEncodingGzip,
      'headersConfig': pulumi.Input.mapInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig, Map<String, dynamic>>(headersConfig, (value) => value.toMap()),
      'queryStringsConfig': pulumi.Input.mapInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig, Map<String, dynamic>>(queryStringsConfig, (value) => value.toMap()),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOrigin(
      cookiesConfig: pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.fromMap((map['cookiesConfig']! as Map).cast<String, dynamic>())),
      enableAcceptEncodingBrotli: (() { final guardedValue = map['enableAcceptEncodingBrotli']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAcceptEncodingGzip: (() { final guardedValue = map['enableAcceptEncodingGzip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headersConfig: pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap((map['headersConfig']! as Map).cast<String, dynamic>())),
      queryStringsConfig: pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig.fromMap((map['queryStringsConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

