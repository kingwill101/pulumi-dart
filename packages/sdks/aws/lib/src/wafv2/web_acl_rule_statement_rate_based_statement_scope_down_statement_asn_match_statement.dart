// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_asn_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs) to match against. ASNs are unique identifiers assigned to large internet networks managed by organizations such as internet service providers, enterprises, universities, or government agencies.
  final pulumi.Input<List<int>> asnLists;
  /// Configuration for inspecting IP addresses in an HTTP header instead of using the web request origin. See Forwarded IP Config below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig>? forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement].
  /// [asnLists] List of Autonomous System Numbers (ASNs) to match against. ASNs are unique identifiers assigned to large internet networks managed by organizations such as internet service providers, enterprises, universities, or government agencies.
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header instead of using the web request origin. See Forwarded IP Config below.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement({
    required this.asnLists,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnLists': asnLists,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement(
      asnLists: pulumi.Input.fromValue((map['asnLists'] as List).cast<int>()),
      forwardedIpConfig: (() { final guardedValue = map['forwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
