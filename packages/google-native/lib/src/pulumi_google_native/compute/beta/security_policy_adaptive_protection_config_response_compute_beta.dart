// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config_response_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response_compute_beta.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta
      autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta({
    required this.autoDeployConfig,
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeployConfig'] = autoDeployConfig.toMap();
    map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfig.toMap();
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta(
      autoDeployConfig:
          SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta
              .fromMap(
                  (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig:
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
