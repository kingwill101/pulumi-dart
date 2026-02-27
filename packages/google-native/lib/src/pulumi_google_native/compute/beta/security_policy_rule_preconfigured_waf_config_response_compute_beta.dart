// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta>
      exclusions;

  SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta(
      exclusions: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta>(
          map['exclusions'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
