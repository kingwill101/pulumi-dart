// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the IP Set that this statement references.
  final String arn;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig?
  ipSetForwardedIpConfig;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the IP Set that this statement references.
  /// [ipSetForwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ipSetForwardedIpConfig': ?ipSetForwardedIpConfig == null
          ? null
          : ipSetForwardedIpConfig!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement(
      arn: map['arn'] as String,
      ipSetForwardedIpConfig: map['ipSetForwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap(
              (map['ipSetForwardedIpConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
