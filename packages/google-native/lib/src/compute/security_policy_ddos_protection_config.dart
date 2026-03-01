// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection.dart';

class SecurityPolicyDdosProtectionConfig {
  final SecurityPolicyDdosProtectionConfigDdosProtection? ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfig].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfig({this.ddosProtection});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?ddosProtection == null ? null : ddosProtection!.value,
    };
  }

  factory SecurityPolicyDdosProtectionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfig(
      ddosProtection: map['ddosProtection'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigDdosProtection.fromValue(
              map['ddosProtection'] as String,
            ),
    );
  }
}
