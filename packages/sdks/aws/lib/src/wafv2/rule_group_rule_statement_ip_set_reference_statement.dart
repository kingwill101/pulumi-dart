// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class RuleGroupRuleStatementIpSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the IP Set that this statement references.
  final pulumi.Input<String> arn;
  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.
  final pulumi.Input<RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig>? ipSetForwardedIpConfig;

  /// Creates a new [RuleGroupRuleStatementIpSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the IP Set that this statement references.
  /// [ipSetForwardedIpConfig] The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See IPSet Forwarded IP Config below for more details.
  RuleGroupRuleStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ipSetForwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig, Map<String, dynamic>>(ipSetForwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementIpSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementIpSetReferenceStatement(
      arn: (map['arn'] as String).input(),
      ipSetForwardedIpConfig: map['ipSetForwardedIpConfig'] == null ? null : (RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap((map['ipSetForwardedIpConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

