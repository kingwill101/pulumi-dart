// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config.dart';
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config.dart';
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_query_strings_config.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOrigin {
  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig>
      cookiesConfigs;

  /// A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
  final bool enableAcceptEncodingBrotli;

  /// A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
  final bool enableAcceptEncodingGzip;

  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig>
      headersConfigs;

  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig>
      queryStringsConfigs;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOrigin].
  /// [cookiesConfigs] Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  /// [enableAcceptEncodingBrotli] A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
  /// [enableAcceptEncodingGzip] A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.
  /// [headersConfigs] Object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  /// [queryStringsConfigs] Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  GetCachePolicyParametersInCacheKeyAndForwardedToOrigin({
    required this.cookiesConfigs,
    required this.enableAcceptEncodingBrotli,
    required this.enableAcceptEncodingGzip,
    required this.headersConfigs,
    required this.queryStringsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookiesConfigs'] = pulumi.Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig,
        Map<String, dynamic>>(cookiesConfigs, (value) => value.toMap());
    map['enableAcceptEncodingBrotli'] = enableAcceptEncodingBrotli;
    map['enableAcceptEncodingGzip'] = enableAcceptEncodingGzip;
    map['headersConfigs'] = pulumi.Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig,
        Map<String, dynamic>>(headersConfigs, (value) => value.toMap());
    map['queryStringsConfigs'] = pulumi.Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig,
        Map<String, dynamic>>(queryStringsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOrigin(
      cookiesConfigs: pulumi.Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig>(
          map['cookiesConfigs'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      enableAcceptEncodingBrotli: map['enableAcceptEncodingBrotli'] as bool,
      enableAcceptEncodingGzip: map['enableAcceptEncodingGzip'] as bool,
      headersConfigs: pulumi.Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig>(
          map['headersConfigs'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      queryStringsConfigs: pulumi.Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig>(
          map['queryStringsConfigs'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
