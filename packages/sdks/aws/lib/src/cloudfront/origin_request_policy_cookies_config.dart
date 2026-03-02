// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_request_policy_cookies_config_cookies.dart';

class OriginRequestPolicyCookiesConfig {
  final pulumi.Input<String> cookieBehavior;
  final pulumi.Input<OriginRequestPolicyCookiesConfigCookies>? cookies;

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
      'cookies': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyCookiesConfigCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
    };
  }

  factory OriginRequestPolicyCookiesConfig.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyCookiesConfig(
      cookieBehavior: (map['cookieBehavior'] as String).input(),
      cookies: map['cookies'] == null ? null : (OriginRequestPolicyCookiesConfigCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

