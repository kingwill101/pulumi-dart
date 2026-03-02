// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_cookies_config_cookies.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  /// Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `cookie_behavior` are `none`, `whitelist`, `allExcept`, and `all`.
  final pulumi.Input<String> cookieBehavior;
  /// Object that contains a list of cookie names. See Items for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies>? cookies;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig].
  /// [cookieBehavior] Whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `cookie_behavior` are `none`, `whitelist`, `allExcept`, and `all`.
  /// [cookies] Object that contains a list of cookie names. See Items for more information.
  CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieBehavior': cookieBehavior,
      'cookies': ?pulumi.Input.mapOptionalInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig(
      cookieBehavior: (map['cookieBehavior'] as String).input(),
      cookies: map['cookies'] == null ? null : ((CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies.fromMap((map['cookies']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

