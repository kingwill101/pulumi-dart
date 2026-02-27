// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponse {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponse>
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigResponse({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionResponse,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponse(
      exclusions: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponse>(
          map['exclusions'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
