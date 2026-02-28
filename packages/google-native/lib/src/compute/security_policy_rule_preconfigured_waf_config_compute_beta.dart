// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigComputeBeta {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta>?
      exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigComputeBeta].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfigComputeBeta({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = pulumi.Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigComputeBeta(
      exclusions: map['exclusions'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta>(
              map['exclusions'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
