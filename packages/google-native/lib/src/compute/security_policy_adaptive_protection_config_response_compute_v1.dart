// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response_compute_v1.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponseComputeV1 {
  /// If set to true, enables Cloud Armor Machine Learning.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1 layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigResponseComputeV1].
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfigResponseComputeV1({
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layer7DdosDefenseConfig': layer7DdosDefenseConfig.toMap(),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigResponseComputeV1(
      layer7DdosDefenseConfig: SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1.fromMap((map['layer7DdosDefenseConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

