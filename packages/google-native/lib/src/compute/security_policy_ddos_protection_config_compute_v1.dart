// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection_compute_v1.dart';

class SecurityPolicyDdosProtectionConfigComputeV1 {
  final SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1?
  ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigComputeV1].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfigComputeV1({this.ddosProtection});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?ddosProtection == null ? null : ddosProtection!.value,
    };
  }

  factory SecurityPolicyDdosProtectionConfigComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyDdosProtectionConfigComputeV1(
      ddosProtection: map['ddosProtection'] == null
          ? null
          : SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1.fromValue(
              map['ddosProtection'] as String,
            ),
    );
  }
}
