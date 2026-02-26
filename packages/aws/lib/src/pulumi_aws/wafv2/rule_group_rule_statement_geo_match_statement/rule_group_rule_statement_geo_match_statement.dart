// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_statement_geo_match_statement_forwarded_ip_config/rule_group_rule_statement_geo_match_statement_forwarded_ip_config.dart';

class RuleGroupRuleStatementGeoMatchStatement {
  /// An array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  final List<String> countryCodes;

  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for details.
  final RuleGroupRuleStatementGeoMatchStatementForwardedIpConfig?
      forwardedIpConfig;

  RuleGroupRuleStatementGeoMatchStatement({
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

  factory RuleGroupRuleStatementGeoMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementGeoMatchStatement(
      countryCodes: (map['countryCodes'] as List).cast<String>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : RuleGroupRuleStatementGeoMatchStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
