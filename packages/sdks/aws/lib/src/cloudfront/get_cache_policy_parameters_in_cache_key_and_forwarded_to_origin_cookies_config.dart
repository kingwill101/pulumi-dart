// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookie.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  /// Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`, `allExcept`, `all`.
  final pulumi.Input<String> cookieBehavior;
  /// Object that contains a list of cookie names. See Items for more information.
  final pulumi.Input<List<GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie>> cookies;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig].
  /// [cookieBehavior] Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`, `allExcept`, `all`.
  /// [cookies] Object that contains a list of cookie names. See Items for more information.
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig({
    required this.cookieBehavior,
    required this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieBehavior': cookieBehavior,
      'cookies': pulumi.Input.mapInputValue<List<GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig(
      cookieBehavior: pulumi.Input.fromValue(map['cookieBehavior'] as String),
      cookies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie>(map['cookies']!, (value) => GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

