// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_response3.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponse3 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3>
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigResponse3({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponse3(
      exclusions: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3>(
          map['exclusions'],
          (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
