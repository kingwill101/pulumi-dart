// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1>
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1(
      exclusions: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1>(
          map['exclusions'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
