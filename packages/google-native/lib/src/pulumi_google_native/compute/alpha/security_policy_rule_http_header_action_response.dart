// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_http_header_action_http_header_option_response.dart';

class SecurityPolicyRuleHttpHeaderActionResponse {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse>
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderActionResponse({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdds'] = Input.encodeList<
        SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse,
        Map<String, dynamic>>(requestHeadersToAdds, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponse(
      requestHeadersToAdds: Input.decodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse>(
          map['requestHeadersToAdds'],
          (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
