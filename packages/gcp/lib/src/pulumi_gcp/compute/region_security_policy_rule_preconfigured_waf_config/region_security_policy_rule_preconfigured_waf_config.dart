// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_security_policy_rule_preconfigured_waf_config_exclusion/region_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class RegionSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>?
      exclusions;

  RegionSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = Input.encodeList<
          RegionSecurityPolicyRulePreconfiguredWafConfigExclusion,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: map['exclusions'] == null
          ? null
          : Input.decodeList<
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>(
              map['exclusions'],
              (value) => RegionSecurityPolicyRulePreconfiguredWafConfigExclusion
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
