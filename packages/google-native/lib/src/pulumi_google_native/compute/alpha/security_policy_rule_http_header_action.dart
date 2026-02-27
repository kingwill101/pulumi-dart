// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_http_header_action_http_header_option.dart';

class SecurityPolicyRuleHttpHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption>?
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderAction({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = Input.encodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOption,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderAction.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption>(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
