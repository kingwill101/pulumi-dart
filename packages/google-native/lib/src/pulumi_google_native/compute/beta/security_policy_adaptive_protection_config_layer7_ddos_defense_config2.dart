// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_rule_visibility2.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config2.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2 {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool? enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2?
      ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig2>?
      thresholdConfigs;

  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2({
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
      map['thresholdConfigs'] = Input.encodeList<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig2,
          Map<String,
              dynamic>>(thresholdConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility2
              .fromValue(map['ruleVisibility'] as String),
      thresholdConfigs: map['thresholdConfigs'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig2>(
              map['thresholdConfigs'],
              (value) =>
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig2
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
