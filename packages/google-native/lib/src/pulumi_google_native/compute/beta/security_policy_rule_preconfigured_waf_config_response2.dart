// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_response2.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponse2 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponse2>
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigResponse2({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionResponse2,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponse2(
      exclusions: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponse2>(
          map['exclusions'],
          (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionResponse2
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
