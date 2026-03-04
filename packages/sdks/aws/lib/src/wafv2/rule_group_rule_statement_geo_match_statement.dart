// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_geo_match_statement_forwarded_ip_config.dart';

class RuleGroupRuleStatementGeoMatchStatement {
  /// An array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  final pulumi.Input<List<String>> countryCodes;

  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for details.
  final pulumi.Input<RuleGroupRuleStatementGeoMatchStatementForwardedIpConfig>?
  forwardedIpConfig;

  /// Creates a new [RuleGroupRuleStatementGeoMatchStatement].
  /// [countryCodes] An array of two-character country codes, for example, [ "US", "CN" ], from the alpha-2 country ISO codes of the `ISO 3166` international standard. See the [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_GeoMatchStatement.html) for valid values.
  /// [forwardedIpConfig] The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for details.
  RuleGroupRuleStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCodes': countryCodes,
      'forwardedIpConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementGeoMatchStatementForwardedIpConfig,
            Map<String, dynamic>
          >(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementGeoMatchStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementGeoMatchStatement(
      countryCodes: pulumi.Input.fromValue(
        (map['countryCodes'] as List).cast<String>(),
      ),
      forwardedIpConfig: (() {
        final guardedValue = map['forwardedIpConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementGeoMatchStatementForwardedIpConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
