// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_security_policy_rule_preconfigured_waf_config_exclusion/get_region_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class GetRegionSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion>
      exclusions;

  GetRegionSecurityPolicyRulePreconfiguredWafConfig({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = pulumi.Input.encodeList<
        GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory GetRegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: pulumi.Input.decodeList<
              GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion>(
          map['exclusions'],
          (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
