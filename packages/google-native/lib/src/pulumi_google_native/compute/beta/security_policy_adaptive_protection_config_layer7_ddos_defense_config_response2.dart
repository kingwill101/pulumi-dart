// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_response2.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2 {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse2>
      thresholdConfigs;

  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2({
    required this.enable,
    required this.ruleVisibility,
    required this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['ruleVisibility'] = ruleVisibility;
    map['thresholdConfigs'] = Input.encodeList<
        SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse2,
        Map<String, dynamic>>(thresholdConfigs, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse2(
      enable: map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] as String,
      thresholdConfigs: Input.decodeList<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse2>(
          map['thresholdConfigs'],
          (value) =>
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse2
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
