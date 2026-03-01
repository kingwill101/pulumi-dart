// ignore_for_file: unused_element, unnecessary_cast

import 'origin_request_policy_cookies_config_cookies.dart';

class OriginRequestPolicyCookiesConfig {
  final String cookieBehavior;
  final OriginRequestPolicyCookiesConfigCookies? cookies;

  /// Creates a new [OriginRequestPolicyCookiesConfig].
  /// [cookieBehavior] Required.
  /// [cookies] Optional.
  OriginRequestPolicyCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieBehavior': cookieBehavior,
      'cookies': ?cookies == null ? null : cookies!.toMap(),
    };
  }

  factory OriginRequestPolicyCookiesConfig.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyCookiesConfig(
      cookieBehavior: map['cookieBehavior'] as String,
      cookies: map['cookies'] == null ? null : OriginRequestPolicyCookiesConfigCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>()),
    );
  }
}

