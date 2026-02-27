// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_rule_visibility_compute_v1.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_compute_v1.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1 {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool? enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1?
      ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1>?
      thresholdConfigs;

  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1({
    this.enable,
    this.ruleVisibility,
    this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final ruleVisibilityValue = ruleVisibility;
    if (ruleVisibilityValue != null) {
      map['ruleVisibility'] = ruleVisibilityValue.value;
    }
    final thresholdConfigsValue = thresholdConfigs;
    if (thresholdConfigsValue != null) {
      map['thresholdConfigs'] = pulumi.Input.encodeList<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1,
          Map<String,
              dynamic>>(thresholdConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeV1
              .fromValue(map['ruleVisibility'] as String),
      thresholdConfigs: map['thresholdConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1>(
              map['thresholdConfigs'],
              (value) =>
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
