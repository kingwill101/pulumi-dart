// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_geo_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementGeoMatchStatement {
  /// Array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  final List<String> countryCodes;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for details.
  final WebAclRuleStatementGeoMatchStatementForwardedIpConfig?
      forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementGeoMatchStatement].
  /// [countryCodes] Array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for details.
  WebAclRuleStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['countryCodes'] = countryCodes;
    final forwardedIpConfigValue = forwardedIpConfig;
    if (forwardedIpConfigValue != null) {
      map['forwardedIpConfig'] = forwardedIpConfigValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementGeoMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementGeoMatchStatement(
      countryCodes: (map['countryCodes'] as List).cast<String>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementGeoMatchStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
