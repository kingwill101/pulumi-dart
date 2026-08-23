// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_geo_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementGeoMatchStatement {
  /// List of two-character country codes (ISO 3166-1 alpha-2).
  final pulumi.Input<List<String>> countryCodes;
  /// Configuration for inspecting forwarded IP headers. See Forwarded IP Config below.
  final pulumi.Input<WebAclRuleStatementGeoMatchStatementForwardedIpConfig>? forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementGeoMatchStatement].
  /// [countryCodes] List of two-character country codes (ISO 3166-1 alpha-2).
  /// [forwardedIpConfig] Configuration for inspecting forwarded IP headers. See Forwarded IP Config below.
  const WebAclRuleStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCodes': countryCodes,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementGeoMatchStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementGeoMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementGeoMatchStatement(
      countryCodes: pulumi.Input.fromValue((map['countryCodes'] as List).cast<String>()),
      forwardedIpConfig: (() { final guardedValue = map['forwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementGeoMatchStatementForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
