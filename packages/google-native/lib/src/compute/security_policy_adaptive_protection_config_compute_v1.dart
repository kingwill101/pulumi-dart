// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_compute_v1.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigComputeV1 {
  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1?
      layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigComputeV1].
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfigComputeV1({
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final layer7DdosDefenseConfigValue = layer7DdosDefenseConfig;
    if (layer7DdosDefenseConfigValue != null) {
      map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfigValue.toMap();
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigComputeV1(
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeV1
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
