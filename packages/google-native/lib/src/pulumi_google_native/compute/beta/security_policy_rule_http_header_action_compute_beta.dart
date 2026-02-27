// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_compute_beta.dart';

class SecurityPolicyRuleHttpHeaderActionComputeBeta {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta>?
      requestHeadersToAdds;

  SecurityPolicyRuleHttpHeaderActionComputeBeta({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = pulumi.Input.encodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionComputeBeta(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta>(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
