// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the IP Set that this statement references.
  final String arn;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  final WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig?
      ipSetForwardedIpConfig;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the IP Set that this statement references.
  /// [ipSetForwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final ipSetForwardedIpConfigValue = ipSetForwardedIpConfig;
    if (ipSetForwardedIpConfigValue != null) {
      map['ipSetForwardedIpConfig'] = ipSetForwardedIpConfigValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement(
      arn: map['arn'] as String,
      ipSetForwardedIpConfig: map['ipSetForwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig
              .fromMap((map['ipSetForwardedIpConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
