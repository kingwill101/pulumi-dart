// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfig {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig?
      autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig?
      layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfig].
  /// [autoDeployConfig] Optional.
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfig({
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

  factory SecurityPolicyAdaptiveProtectionConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfig: map['autoDeployConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
              (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
