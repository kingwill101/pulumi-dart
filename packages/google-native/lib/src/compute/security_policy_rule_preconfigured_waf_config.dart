// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion.dart';

class SecurityPolicyRulePreconfiguredWafConfig {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusion>? exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfig({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfig(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusion>(map['exclusions'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

