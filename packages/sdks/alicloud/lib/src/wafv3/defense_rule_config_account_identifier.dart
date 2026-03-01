// ignore_for_file: unused_element, unnecessary_cast


class DefenseRuleConfigAccountIdentifier {
  /// The authentication mode. Valid values:
  /// - plain: indicates plaintext.
  /// - basic: indicates Basic authentication.
  /// - jwt: indicates JWT authentication. For JWT authentication, you must specify the field that stores the decoded account information (position).
  final String? decodeType;
  /// Match field. Valid values: URL, URLPath, IP, Referer, User-Agent, Params, Cookie, Content-Type, Content-Length, X-Forwarded-For, Post-Body, Http-Method, Header, Host, HttpCode, and SensitiveInfo.
  ///
  /// > **NOTE:**  Support for matching fields is based on the display in the WAF console. HttpCode and SensitiveInfo are the matching fields supported by the information leakage prevention rule (dlp).
  final String? key;
  /// The field that stores the decoded account information.
  final String? position;
  /// The priority of the current extraction configuration. Each traffic can match at most one extraction policy. Valid values: [0,20]. A smaller value indicates a higher priority. The priority value must be unique.
  final int? priority;
  /// The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  final String? subKey;

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
      decodeType: map['decodeType'] == null ? null : map['decodeType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      position: map['position'] == null ? null : map['position'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      subKey: map['subKey'] == null ? null : map['subKey'] as String,
    );
  }
}

