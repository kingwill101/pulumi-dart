// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfig {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig? autoDeployConfig;
  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig? layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfig].
  /// [autoDeployConfig] Optional.
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfig({
    this.autoDeployConfig,
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfig': ?autoDeployConfig == null ? null : autoDeployConfig!.toMap(),
      'layer7DdosDefenseConfig': ?layer7DdosDefenseConfig == null ? null : layer7DdosDefenseConfig!.toMap(),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfig: map['autoDeployConfig'] == null ? null : SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap((map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null ? null : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap((map['layer7DdosDefenseConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

