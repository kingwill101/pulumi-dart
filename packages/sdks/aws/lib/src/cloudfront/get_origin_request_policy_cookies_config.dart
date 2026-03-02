// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_request_policy_cookies_config_cookie.dart';

class GetOriginRequestPolicyCookiesConfig {
  final pulumi.Input<String> cookieBehavior;
  final pulumi.Input<List<GetOriginRequestPolicyCookiesConfigCookie>> cookies;

  /// Creates a new [GetOriginRequestPolicyCookiesConfig].
  /// [cookieBehavior] Required.
  /// [cookies] Required.
  GetOriginRequestPolicyCookiesConfig({
    required this.cookieBehavior,
    required this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieBehavior': cookieBehavior,
      'cookies': pulumi.Input.mapInputValue<List<GetOriginRequestPolicyCookiesConfigCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<GetOriginRequestPolicyCookiesConfigCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOriginRequestPolicyCookiesConfig.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyCookiesConfig(
      cookieBehavior: (map['cookieBehavior'] as String).input(),
      cookies: (pulumi.Input.decodeList<GetOriginRequestPolicyCookiesConfigCookie>(map['cookies']!, (value) => GetOriginRequestPolicyCookiesConfigCookie.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

