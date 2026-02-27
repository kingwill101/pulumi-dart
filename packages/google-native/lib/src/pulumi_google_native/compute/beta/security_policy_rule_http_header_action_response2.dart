// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_http_header_action_http_header_option_response2.dart';

class SecurityPolicyRuleHttpHeaderActionResponse2 {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse2>
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderActionResponse2({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdds'] = Input.encodeList<
        SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse2,
        Map<String, dynamic>>(requestHeadersToAdds, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponse2(
      requestHeadersToAdds: Input.decodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse2>(
          map['requestHeadersToAdds'],
          (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse2
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
