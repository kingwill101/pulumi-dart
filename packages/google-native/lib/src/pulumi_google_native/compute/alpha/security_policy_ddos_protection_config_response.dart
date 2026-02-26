// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponse {
  final String ddosProtection;

  SecurityPolicyDdosProtectionConfigResponse({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ddosProtection'] = ddosProtection;
    return map;
  }

  factory SecurityPolicyDdosProtectionConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponse(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
