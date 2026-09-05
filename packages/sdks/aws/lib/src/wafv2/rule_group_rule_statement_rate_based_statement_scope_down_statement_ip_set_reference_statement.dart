// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement {
  /// ARN of the IP Set that this statement references.
  final pulumi.Input<String> arn;
  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig?>? ipSetForwardedIpConfig;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement].
  /// [arn] ARN of the IP Set that this statement references.
  /// [ipSetForwardedIpConfig] The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ipSetForwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig, Map<String, dynamic>>(ipSetForwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      ipSetForwardedIpConfig: (() { final guardedValue = map['ipSetForwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
