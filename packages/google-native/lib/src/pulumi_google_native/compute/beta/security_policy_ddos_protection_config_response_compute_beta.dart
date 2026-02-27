// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponseComputeBeta {
  final String ddosProtection;

  SecurityPolicyDdosProtectionConfigResponseComputeBeta({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ddosProtection'] = ddosProtection;
    return map;
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponseComputeBeta(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
