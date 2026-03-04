// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefenseRuleConfigAccountIdentifier {
  /// The authentication mode. Valid values:
  /// - plain: indicates plaintext.
  /// - basic: indicates Basic authentication.
  /// - jwt: indicates JWT authentication. For JWT authentication, you must specify the field that stores the decoded account information (position).
  final pulumi.Input<String>? decodeType;

  /// Match field. Valid values: URL, URLPath, IP, Referer, User-Agent, Params, Cookie, Content-Type, Content-Length, X-Forwarded-For, Post-Body, Http-Method, Header, Host, HttpCode, and SensitiveInfo.
  ///
  /// &gt; **NOTE:**  Support for matching fields is based on the display in the WAF console. HttpCode and SensitiveInfo are the matching fields supported by the information leakage prevention rule (dlp).
  final pulumi.Input<String>? key;

  /// The field that stores the decoded account information.
  final pulumi.Input<String>? position;

  /// The priority of the current extraction configuration. Each traffic can match at most one extraction policy. Valid values: [0,20]. A smaller value indicates a higher priority. The priority value must be unique.
  final pulumi.Input<int>? priority;

  /// The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  final pulumi.Input<String>? subKey;

  /// Creates a new [DefenseRuleConfigAccountIdentifier].
  /// [decodeType] The authentication mode. Valid values:
  /// [key] Match field. Valid values: URL, URLPath, IP, Referer, User-Agent, Params, Cookie, Content-Type, Content-Length, X-Forwarded-For, Post-Body, Http-Method, Header, Host, HttpCode, and SensitiveInfo.
  /// [position] The field that stores the decoded account information.
  /// [priority] The priority of the current extraction configuration. Each traffic can match at most one extraction policy. Valid values: [0,20]. A smaller value indicates a higher priority. The priority value must be unique.
  /// [subKey] The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  DefenseRuleConfigAccountIdentifier({
    this.decodeType,
    this.key,
    this.position,
    this.priority,
    this.subKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decodeType': ?decodeType,
      'key': ?key,
      'position': ?position,
      'priority': ?priority,
      'subKey': ?subKey,
    };
  }

  factory DefenseRuleConfigAccountIdentifier.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigAccountIdentifier(
      decodeType: (() {
        final guardedValue = map['decodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      position: (() {
        final guardedValue = map['position'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subKey: (() {
        final guardedValue = map['subKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
