// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_asn_match_statement_forwarded_ip_config.dart';

class RuleGroupRuleStatementAsnMatchStatement {
  /// List of Autonomous System Numbers (ASNs).
  final pulumi.Input<List<int>> asnLists;
  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for more details.
  final pulumi.Input<RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig>? forwardedIpConfig;

  /// Creates a new [RuleGroupRuleStatementAsnMatchStatement].
  /// [asnLists] List of Autonomous System Numbers (ASNs).
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See Forwarded IP Config below for more details.
  const RuleGroupRuleStatementAsnMatchStatement({
    required this.asnLists,
    this.forwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnLists': asnLists,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementAsnMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementAsnMatchStatement(
      asnLists: pulumi.Input.fromValue((map['asnLists'] as List).cast<int>()),
      forwardedIpConfig: (() { final guardedValue = map['forwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
