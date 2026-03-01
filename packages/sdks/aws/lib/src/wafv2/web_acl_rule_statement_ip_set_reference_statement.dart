// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class WebAclRuleStatementIpSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the IP Set that this statement references.
  final String arn;
  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  final WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig? ipSetForwardedIpConfig;

  /// Creates a new [WebAclRuleStatementIpSetReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the IP Set that this statement references.
  /// [ipSetForwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  WebAclRuleStatementIpSetReferenceStatement({
    required this.arn,
    this.ipSetForwardedIpConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ipSetForwardedIpConfig': ?ipSetForwardedIpConfig == null ? null : ipSetForwardedIpConfig!.toMap(),
    };
  }

  factory WebAclRuleStatementIpSetReferenceStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementIpSetReferenceStatement(
      arn: map['arn'] as String,
      ipSetForwardedIpConfig: map['ipSetForwardedIpConfig'] == null ? null : WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap((map['ipSetForwardedIpConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

