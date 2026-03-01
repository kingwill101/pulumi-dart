// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_header_action_request_headers_to_add.dart';

class SecurityPolicyRuleHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  /// Structure is documented below.
  final List<SecurityPolicyRuleHeaderActionRequestHeadersToAdd>?
  requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHeaderAction].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  SecurityPolicyRuleHeaderAction({this.requestHeadersToAdds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?requestHeadersToAdds == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRuleHeaderActionRequestHeadersToAdd,
              Map<String, dynamic>
            >(requestHeadersToAdds!, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRuleHeaderActionRequestHeadersToAdd
            >(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
