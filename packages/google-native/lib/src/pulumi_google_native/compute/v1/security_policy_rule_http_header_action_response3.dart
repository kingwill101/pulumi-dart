// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_http_header_action_http_header_option_response3.dart';

class SecurityPolicyRuleHttpHeaderActionResponse3 {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3>
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderActionResponse3({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdds'] = Input.encodeList<
        SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3,
        Map<String, dynamic>>(requestHeadersToAdds, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponse3(
      requestHeadersToAdds: Input.decodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3>(
          map['requestHeadersToAdds'],
          (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
