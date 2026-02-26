// ignore_for_file: unused_element, unnecessary_cast

import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookies/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookies.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  /// Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for <span pulumi-lang-nodejs="`cookieBehavior`" pulumi-lang-dotnet="`CookieBehavior`" pulumi-lang-go="`cookieBehavior`" pulumi-lang-python="`cookie_behavior`" pulumi-lang-yaml="`cookieBehavior`" pulumi-lang-java="`cookieBehavior`">`cookie_behavior`</span> are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, `allExcept`, and <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>.
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
