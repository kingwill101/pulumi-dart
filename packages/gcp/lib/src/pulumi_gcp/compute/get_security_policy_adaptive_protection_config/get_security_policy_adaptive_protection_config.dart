// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_adaptive_protection_config_auto_deploy_config/get_security_policy_adaptive_protection_config_auto_deploy_config.dart';
import '../get_security_policy_adaptive_protection_config_layer7_ddos_defense_config/get_security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

class GetSecurityPolicyAdaptiveProtectionConfig {
  /// Auto Deploy Config of this security policy
  final List<GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>
      autoDeployConfigs;

  /// Layer 7 DDoS Defense Config of this security policy
  final List<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>
      layer7DdosDefenseConfigs;

  GetSecurityPolicyAdaptiveProtectionConfig({
    required this.autoDeployConfigs,
    required this.layer7DdosDefenseConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeployConfigs'] = Input.encodeList<
        GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig,
        Map<String, dynamic>>(autoDeployConfigs, (value) => value.toMap());
    map['layer7DdosDefenseConfigs'] = Input.encodeList<
            GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig,
            Map<String, dynamic>>(
        layer7DdosDefenseConfigs, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyAdaptiveProtectionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfigs: Input.decodeList<
              GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>(
          map['autoDeployConfigs'],
          (value) =>
              GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      layer7DdosDefenseConfigs: Input.decodeList<
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>(
          map['layer7DdosDefenseConfigs'],
          (value) =>
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
