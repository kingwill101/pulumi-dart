// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config2.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config2.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfig2 {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig2?
      autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2?
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfig2({
    this.autoDeployConfig,
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeployConfigValue = autoDeployConfig;
    if (autoDeployConfigValue != null) {
      map['autoDeployConfig'] = autoDeployConfigValue.toMap();
    }
    final layer7DdosDefenseConfigValue = layer7DdosDefenseConfig;
    if (layer7DdosDefenseConfigValue != null) {
      map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfigValue.toMap();
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfig2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfig2(
      autoDeployConfig: map['autoDeployConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig2.fromMap(
              (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig2
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
