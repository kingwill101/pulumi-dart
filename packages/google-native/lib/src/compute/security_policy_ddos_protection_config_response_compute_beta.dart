// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyDdosProtectionConfigResponseComputeBeta {
  final String ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigResponseComputeBeta].
  /// [ddosProtection] Required.
  SecurityPolicyDdosProtectionConfigResponseComputeBeta({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponseComputeBeta(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}

