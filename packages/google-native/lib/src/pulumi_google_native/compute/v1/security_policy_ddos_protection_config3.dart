// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection3.dart';

class SecurityPolicyDdosProtectionConfig3 {
  final SecurityPolicyDdosProtectionConfigDdosProtection3? ddosProtection;

  SecurityPolicyDdosProtectionConfig3({
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

  factory SecurityPolicyDdosProtectionConfig3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfig3(
      ddosProtection: map['ddosProtection'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigDdosProtection3.fromValue(
              map['ddosProtection'] as String),
    );
  }
}
