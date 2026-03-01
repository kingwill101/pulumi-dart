// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_asn_match_statement_forwarded_ip_config.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs).
  final List<int> asnLists;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for more details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig?
  forwardedIpConfig;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement].
  /// [asnLists] List of Autonomous System Numbers (ASNs).
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for more details.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement({
    required this.asnLists,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnLists': asnLists,
      'forwardedIpConfig': ?forwardedIpConfig == null
          ? null
          : forwardedIpConfig!.toMap(),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement(
      asnLists: (map['asnLists'] as List).cast<int>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
