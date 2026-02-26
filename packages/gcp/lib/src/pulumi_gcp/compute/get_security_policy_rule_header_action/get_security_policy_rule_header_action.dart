// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_rule_header_action_request_headers_to_add/get_security_policy_rule_header_action_request_headers_to_add.dart';

class GetSecurityPolicyRuleHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  final List<GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd>
      requestHeadersToAdds;

  GetSecurityPolicyRuleHeaderAction({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdds'] = Input.encodeList<
        GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd,
        Map<String, dynamic>>(requestHeadersToAdds, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleHeaderAction(
      requestHeadersToAdds: Input.decodeList<
              GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd>(
          map['requestHeadersToAdds'],
          (value) =>
              GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
