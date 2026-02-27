// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_response_compute_beta.dart';

class SecurityPolicyRuleHttpHeaderActionResponseComputeBeta {
  /// The list of request headers to add or overwrite if they're already present.
  final List<
          SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta>
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderActionResponseComputeBeta({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestHeadersToAdds'] = pulumi.Input.encodeList<
        SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta,
        Map<String, dynamic>>(requestHeadersToAdds, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponseComputeBeta(
      requestHeadersToAdds: pulumi.Input.decodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta>(
          map['requestHeadersToAdds'],
          (value) =>
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
