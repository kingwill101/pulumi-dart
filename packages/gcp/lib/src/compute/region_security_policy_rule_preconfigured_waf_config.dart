// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class RegionSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>? exclusions;

  /// Creates a new [RegionSecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] An exclusion to apply during preconfigured WAF evaluation.
  RegionSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
    };
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>(map['exclusions'], (value) => RegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

