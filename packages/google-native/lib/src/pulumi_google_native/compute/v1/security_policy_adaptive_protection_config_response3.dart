// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response3.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponse3 {
  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse3
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfigResponse3({
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfig.toMap();
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigResponse3(
      layer7DdosDefenseConfig:
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse3
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
