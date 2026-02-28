// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_asn_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs).
  final List<int> asnLists;
  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for more details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatementForwardedIpConfig? forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement].
  /// [asnLists] List of Autonomous System Numbers (ASNs).
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for more details.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement({
    required this.asnLists,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnLists': asnLists,
      'forwardedIpConfig': ?forwardedIpConfig == null ? null : forwardedIpConfig!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement(
      asnLists: (map['asnLists'] as List).cast<int>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatementForwardedIpConfig.fromMap((map['forwardedIpConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

