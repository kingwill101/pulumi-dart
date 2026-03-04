// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_ip_set_reference_statement_ip_set_forwarded_ip_config.dart';

class WebAclRuleStatementIpSetReferenceStatement {
  /// The Amazon Resource Name (ARN) of the IP Set that this statement references.
  final pulumi.Input<String> arn;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. See `ip_set_forwarded_ip_config` below for more details.
  final pulumi.Input<
    WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig
  >?
  ipSetForwardedIpConfig;

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
      'ipSetForwardedIpConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig,
            Map<String, dynamic>
          >(ipSetForwardedIpConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementIpSetReferenceStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementIpSetReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      ipSetForwardedIpConfig: (() {
        final guardedValue = map['ipSetForwardedIpConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
