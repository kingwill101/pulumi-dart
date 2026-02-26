// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config/get_security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config.dart';

class GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig {
  /// If set to true, enables CAAP for L7 DDoS detection.
  final bool enable;

  /// Rule visibility. Supported values include: "STANDARD", "PREMIUM".
  final String ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig>
      thresholdConfigs;

  GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig({
    required this.enable,
    required this.ruleVisibility,
    required this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['ruleVisibility'] = ruleVisibility;
    map['thresholdConfigs'] = Input.encodeList<
        GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig,
        Map<String, dynamic>>(thresholdConfigs, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig(
      enable: map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] as String,
      thresholdConfigs: Input.decodeList<
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig>(
          map['thresholdConfigs'],
          (value) =>
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
