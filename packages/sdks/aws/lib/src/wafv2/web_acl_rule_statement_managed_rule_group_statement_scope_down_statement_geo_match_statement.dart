// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_geo_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement {
  /// List of two-character country codes (ISO 3166-1 alpha-2).
  final pulumi.Input<List<String>> countryCodes;
  /// Configuration for inspecting forwarded IP headers. See Forwarded IP Config below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatementForwardedIpConfig>? forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement].
  /// [countryCodes] List of two-character country codes (ISO 3166-1 alpha-2).
  /// [forwardedIpConfig] Configuration for inspecting forwarded IP headers. See Forwarded IP Config below.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement({
    required this.countryCodes,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCodes': countryCodes,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement(
      countryCodes: pulumi.Input.fromValue((map['countryCodes'] as List).cast<String>()),
      forwardedIpConfig: (() { final guardedValue = map['forwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatementForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
