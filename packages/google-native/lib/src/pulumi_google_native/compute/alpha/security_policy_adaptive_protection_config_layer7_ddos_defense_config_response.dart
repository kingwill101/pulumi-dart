// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_response.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final bool enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final List<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse>
      thresholdConfigs;

  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse({
    required this.enable,
    required this.ruleVisibility,
    required this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['ruleVisibility'] = ruleVisibility;
    map['thresholdConfigs'] = pulumi.Input.encodeList<
        SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse,
        Map<String, dynamic>>(thresholdConfigs, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse(
      enable: map['enable'] as bool,
      ruleVisibility: map['ruleVisibility'] as String,
      thresholdConfigs: pulumi.Input.decodeList<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse>(
          map['thresholdConfigs'],
          (value) =>
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
