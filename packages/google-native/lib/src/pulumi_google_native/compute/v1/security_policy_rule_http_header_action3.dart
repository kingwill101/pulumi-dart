// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_http_header_action_http_header_option3.dart';

class SecurityPolicyRuleHttpHeaderAction3 {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption3>?
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderAction3({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = Input.encodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOption3,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderAction3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderAction3(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption3>(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption3.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
