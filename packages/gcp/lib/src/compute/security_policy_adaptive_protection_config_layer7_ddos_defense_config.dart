// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config.dart';

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig {
  /// If set to true, enables CAAP for L7 DDoS detection.
  final bool? enable;

  /// Rule visibility. Supported values include: "STANDARD", "PREMIUM".
  final String? ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig
  >?
  thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection.
  /// [ruleVisibility] Rule visibility. Supported values include: "STANDARD", "PREMIUM".
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig({
    this.enable,
    this.ruleVisibility,
    this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'ruleVisibility': ?ruleVisibility,
      'thresholdConfigs': ?thresholdConfigs == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig,
              Map<String, dynamic>
            >(thresholdConfigs!, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] == null
          ? null
          : map['ruleVisibility'] as String,
      thresholdConfigs: map['thresholdConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig
            >(
              map['thresholdConfigs'],
              (value) =>
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
