// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponse3 {
  final String ddosProtection;

  SecurityPolicyDdosProtectionConfigResponse3({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ddosProtection'] = ddosProtection;
    return map;
  }

  factory SecurityPolicyDdosProtectionConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponse3(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
