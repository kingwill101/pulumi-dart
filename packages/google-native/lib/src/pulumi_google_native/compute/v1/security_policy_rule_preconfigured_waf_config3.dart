// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion3.dart';

class SecurityPolicyRulePreconfiguredWafConfig3 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusion3>? exclusions;

  SecurityPolicyRulePreconfiguredWafConfig3({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusion3,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfig3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfig3(
      exclusions: map['exclusions'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusion3>(
              map['exclusions'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusion3.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
