// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_request_policy_cookies_config_cookie.dart';

class GetOriginRequestPolicyCookiesConfig {
  final String cookieBehavior;
  final List<GetOriginRequestPolicyCookiesConfigCookie> cookies;

  /// Creates a new [GetOriginRequestPolicyCookiesConfig].
  /// [cookieBehavior] Required.
  /// [cookies] Required.
  GetOriginRequestPolicyCookiesConfig({
    required this.cookieBehavior,
    required this.cookies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieBehavior'] = cookieBehavior;
    map['cookies'] = pulumi.Input.encodeList<
        GetOriginRequestPolicyCookiesConfigCookie,
        Map<String, dynamic>>(cookies, (value) => value.toMap());
    return map;
  }

  factory GetOriginRequestPolicyCookiesConfig.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyCookiesConfig(
      cookieBehavior: map['cookieBehavior'] as String,
      cookies:
          pulumi.Input.decodeList<GetOriginRequestPolicyCookiesConfigCookie>(
              map['cookies'],
              (value) => GetOriginRequestPolicyCookiesConfigCookie.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
