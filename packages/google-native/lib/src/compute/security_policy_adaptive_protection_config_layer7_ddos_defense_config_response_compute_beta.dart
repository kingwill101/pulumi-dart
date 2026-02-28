// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_response_compute_beta.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta>
      thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleVisibility] Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta({
    required this.enable,
    required this.ruleVisibility,
    required this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['ruleVisibility'] = ruleVisibility;
    map['thresholdConfigs'] = pulumi.Input.encodeList<
        SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta,
        Map<String, dynamic>>(thresholdConfigs, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta(
      enable: map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] as String,
      thresholdConfigs: pulumi.Input.decodeList<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta>(
          map['thresholdConfigs'],
          (value) =>
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
