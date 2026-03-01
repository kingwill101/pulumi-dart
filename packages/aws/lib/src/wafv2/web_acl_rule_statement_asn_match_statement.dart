// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_asn_match_statement_forwarded_ip_config.dart';

class WebAclRuleStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs).
  final List<int> asnLists;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for more details.
  final WebAclRuleStatementAsnMatchStatementForwardedIpConfig?
  forwardedIpConfig;

  /// Creates a new [WebAclRuleStatementAsnMatchStatement].
  /// [asnLists] List of Autonomous System Numbers (ASNs).
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `forwarded_ip_config` below for more details.
  WebAclRuleStatementAsnMatchStatement({
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

  factory WebAclRuleStatementAsnMatchStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementAsnMatchStatement(
      asnLists: (map['asnLists'] as List).cast<int>(),
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementAsnMatchStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
