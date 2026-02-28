// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigComputeV1 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1>? exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigComputeV1].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfigComputeV1({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigComputeV1(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1>(map['exclusions'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

