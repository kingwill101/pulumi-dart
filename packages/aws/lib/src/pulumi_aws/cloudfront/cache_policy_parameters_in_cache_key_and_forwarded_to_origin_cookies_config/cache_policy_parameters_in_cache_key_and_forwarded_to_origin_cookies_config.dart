// ignore_for_file: unused_element, unnecessary_cast

import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookies/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookies.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  /// Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `cookie_behavior` are `none`, `whitelist`, `allExcept`, and `all`.
  final String cookieBehavior;

  /// Object that contains a list of cookie names. See Items for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies?
      cookies;

  CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieBehavior'] = cookieBehavior;
    final cookiesValue = cookies;
    if (cookiesValue != null) {
      map['cookies'] = cookiesValue.toMap();
    }
    return map;
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.fromMap(
      Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig(
      cookieBehavior: map['cookieBehavior'] as String,
      cookies: map['cookies'] == null
          ? null
          : CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies
              .fromMap((map['cookies'] as Map).cast<String, dynamic>()),
    );
  }
}
