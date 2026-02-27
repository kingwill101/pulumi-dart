// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponseComputeV1 {
  final String ddosProtection;

  SecurityPolicyDdosProtectionConfigResponseComputeV1({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ddosProtection'] = ddosProtection;
    return map;
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponseComputeV1(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
