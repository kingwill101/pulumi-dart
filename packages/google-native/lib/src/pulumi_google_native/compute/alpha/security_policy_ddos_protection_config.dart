// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection.dart';

class SecurityPolicyDdosProtectionConfig {
  final SecurityPolicyDdosProtectionConfigDdosProtection? ddosProtection;

  SecurityPolicyDdosProtectionConfig({
    this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ddosProtectionValue = ddosProtection;
    if (ddosProtectionValue != null) {
      map['ddosProtection'] = ddosProtectionValue.value;
    }
    return map;
  }

  factory SecurityPolicyDdosProtectionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfig(
      ddosProtection: map['ddosProtection'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigDdosProtection.fromValue(
              map['ddosProtection'] as String),
    );
  }
}
