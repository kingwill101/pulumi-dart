// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigComputeV1 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1>?
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigComputeV1({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = pulumi.Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigComputeV1(
      exclusions: map['exclusions'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1>(
              map['exclusions'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
