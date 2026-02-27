// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_preconfigured_waf_config_exclusion2.dart';

class SecurityPolicyRulePreconfiguredWafConfig2 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusion2>? exclusions;

  SecurityPolicyRulePreconfiguredWafConfig2({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusion2,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfig2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfig2(
      exclusions: map['exclusions'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusion2>(
              map['exclusions'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusion2.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
