// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_rule_visibility_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_compute_beta.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool? enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta?
      ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta>?
      thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleVisibility] Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta({
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
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta,
          Map<String,
              dynamic>>(thresholdConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta
              .fromValue(map['ruleVisibility'] as String),
      thresholdConfigs: map['thresholdConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta>(
              map['thresholdConfigs'],
              (value) =>
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
