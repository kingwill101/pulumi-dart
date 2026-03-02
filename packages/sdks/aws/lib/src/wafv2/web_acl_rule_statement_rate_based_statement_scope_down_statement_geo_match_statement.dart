// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_geo_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement {
  /// Array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  final pulumi.Input<List<String>> countryCodes;
  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig>? forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement].
  /// [countryCodes] Array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCodes': countryCodes,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement(
      countryCodes: ((map['countryCodes'] as List).cast<String>()).input(),
      forwardedIpConfig: map['forwardedIpConfig'] == null ? null : ((WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig.fromMap((map['forwardedIpConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

