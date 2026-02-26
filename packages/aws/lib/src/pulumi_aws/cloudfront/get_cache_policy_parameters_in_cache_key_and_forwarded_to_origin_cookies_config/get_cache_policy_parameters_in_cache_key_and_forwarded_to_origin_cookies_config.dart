// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookie/get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookie.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  /// Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, `allExcept`, <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>.
  final String cookieBehavior;

  /// Object that contains a list of cookie names. See Items for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie>
      cookies;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig({
    required this.cookieBehavior,
    required this.cookies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieBehavior'] = cookieBehavior;
    map['cookies'] = Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie,
        Map<String, dynamic>>(cookies, (value) => value.toMap());
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig(
      cookieBehavior: map['cookieBehavior'] as String,
      cookies: Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie>(
          map['cookies'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
