// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponse2 {
  final String ddosProtection;

  SecurityPolicyDdosProtectionConfigResponse2({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ddosProtection'] = ddosProtection;
    return map;
  }

  factory SecurityPolicyDdosProtectionConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponse2(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
