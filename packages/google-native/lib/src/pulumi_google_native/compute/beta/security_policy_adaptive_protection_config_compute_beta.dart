// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_compute_beta.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigComputeBeta {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta?
      autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta?
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfigComputeBeta({
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

  factory SecurityPolicyAdaptiveProtectionConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigComputeBeta(
      autoDeployConfig: map['autoDeployConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta
              .fromMap(
                  (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
