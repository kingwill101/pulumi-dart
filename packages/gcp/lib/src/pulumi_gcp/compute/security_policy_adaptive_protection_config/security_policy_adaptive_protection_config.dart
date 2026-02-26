// ignore_for_file: unused_element, unnecessary_cast

import '../security_policy_adaptive_protection_config_auto_deploy_config/security_policy_adaptive_protection_config_auto_deploy_config.dart';
import '../security_policy_adaptive_protection_config_layer7_ddos_defense_config/security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

class SecurityPolicyAdaptiveProtectionConfig {
  /// Configuration for [Automatically deploy Adaptive Protection suggested rules](https://cloud.google.com/armor/docs/adaptive-protection-auto-deploy?hl=en). Structure is documented below.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedLayer7DdosDefenseConfig"" pulumi-lang-dotnet=""NestedLayer7DdosDefenseConfig"" pulumi-lang-go=""nestedLayer7DdosDefenseConfig"" pulumi-lang-python=""nested_layer_7_ddos_defense_config"" pulumi-lang-yaml=""nestedLayer7DdosDefenseConfig"" pulumi-lang-java=""nestedLayer7DdosDefenseConfig"">"nested_layer_7_ddos_defense_config"</span>></a>The <span pulumi-lang-nodejs="`layer7DdosDefenseConfig`" pulumi-lang-dotnet="`Layer7DdosDefenseConfig`" pulumi-lang-go="`layer7DdosDefenseConfig`" pulumi-lang-python="`layer_7_ddos_defense_config`" pulumi-lang-yaml="`layer7DdosDefenseConfig`" pulumi-lang-java="`layer7DdosDefenseConfig`">`layer_7_ddos_defense_config`</span> block supports:
  final SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig?
      autoDeployConfig;

  /// Configuration for [Google Cloud Armor Adaptive Protection Layer 7 DDoS Defense](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  final SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig?
      layer7DdosDefenseConfig;

  SecurityPolicyAdaptiveProtectionConfig({
    this.autoDeployConfig,
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeployConfigValue = autoDeployConfig;
    if (autoDeployConfigValue != null) {
      map['autoDeployConfig'] = autoDeployConfigValue.toMap();
    }
    final layer7DdosDefenseConfigValue = layer7DdosDefenseConfig;
    if (layer7DdosDefenseConfigValue != null) {
      map['layer7DdosDefenseConfig'] = layer7DdosDefenseConfigValue.toMap();
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfig: map['autoDeployConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
              (map['autoDeployConfig'] as Map).cast<String, dynamic>()),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null
          ? null
          : SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
              .fromMap((map['layer7DdosDefenseConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
