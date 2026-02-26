// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection2.dart';

class SecurityPolicyDdosProtectionConfig2 {
  final SecurityPolicyDdosProtectionConfigDdosProtection2? ddosProtection;

  SecurityPolicyDdosProtectionConfig2({
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

  factory SecurityPolicyDdosProtectionConfig2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfig2(
      ddosProtection: map['ddosProtection'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigDdosProtection2.fromValue(
              map['ddosProtection'] as String),
    );
  }
}
