// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_auto_deploy_config_response2.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response2.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponse2 {
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2
      autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfigResponse2({
    required this.autoDeployConfig,
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeployConfig'] = autoDeployConfig.toMap();
    map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfig.toMap();
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigResponse2(
      autoDeployConfig:
          SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2
              .fromMap(
                  (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig:
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
