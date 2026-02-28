// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class GetSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  final List<GetSecurityPolicyRulePreconfiguredWafConfigExclusion> exclusions;

  /// Creates a new [GetSecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] An exclusion to apply during preconfigured WAF evaluation.
  GetSecurityPolicyRulePreconfiguredWafConfig({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusions'] = pulumi.Input.encodeList<
        GetSecurityPolicyRulePreconfiguredWafConfigExclusion,
        Map<String, dynamic>>(exclusions, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyRulePreconfiguredWafConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: pulumi.Input.decodeList<
              GetSecurityPolicyRulePreconfiguredWafConfigExclusion>(
          map['exclusions'],
          (value) =>
              GetSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
