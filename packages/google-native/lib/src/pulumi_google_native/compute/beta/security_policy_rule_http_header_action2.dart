// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_http_header_action_http_header_option2.dart';

class SecurityPolicyRuleHttpHeaderAction2 {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption2>?
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderAction2({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = Input.encodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOption2,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderAction2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderAction2(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption2>(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption2.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
