// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_compute_v1.dart';

class SecurityPolicyRuleHttpHeaderActionComputeV1 {
  /// The list of request headers to add or overwrite if they're already present.
  final List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1>?
      requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionComputeV1].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  SecurityPolicyRuleHttpHeaderActionComputeV1({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = pulumi.Input.encodeList<
              SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1,
              Map<String, dynamic>>(
          requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionComputeV1(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1>(
              map['requestHeadersToAdds'],
              (value) =>
                  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
