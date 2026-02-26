// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_rate_based_statement_scope_down_statement_asn_match_statement_forwarded_ip_config/web_acl_rule_statement_rate_based_statement_scope_down_statement_asn_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs).
  final List<int> asnLists;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See <span pulumi-lang-nodejs="`forwardedIpConfig`" pulumi-lang-dotnet="`ForwardedIpConfig`" pulumi-lang-go="`forwardedIpConfig`" pulumi-lang-python="`forwarded_ip_config`" pulumi-lang-yaml="`forwardedIpConfig`" pulumi-lang-java="`forwardedIpConfig`">`forwarded_ip_config`</span> below for more details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig?
      forwardedIpConfig;

  WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement({
    required this.asnLists,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asnLists'] = asnLists;
    final forwardedIpConfigValue = forwardedIpConfig;
    if (forwardedIpConfigValue != null) {
      map['forwardedIpConfig'] = forwardedIpConfigValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement(
      asnLists: (map['asnLists'] as List).cast<int>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig
              .fromMap(
                  (map['forwardedIpConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
