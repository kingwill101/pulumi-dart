// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement {
  /// ARN of the IP set to reference.
  final pulumi.Input<String> arn;
  /// Configuration for inspecting forwarded IP headers. See IP Set Forwarded IP Config below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig>? ipSetForwardedIpConfig;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement].
  /// [arn] ARN of the IP set to reference.
  /// [ipSetForwardedIpConfig] Configuration for inspecting forwarded IP headers. See IP Set Forwarded IP Config below.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ipSetForwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig, Map<String, dynamic>>(ipSetForwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      ipSetForwardedIpConfig: (() { final guardedValue = map['ipSetForwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
