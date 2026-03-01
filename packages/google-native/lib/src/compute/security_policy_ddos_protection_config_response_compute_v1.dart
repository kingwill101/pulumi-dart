// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyDdosProtectionConfigResponseComputeV1 {
  final String ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigResponseComputeV1].
  /// [ddosProtection] Required.
  SecurityPolicyDdosProtectionConfigResponseComputeV1({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ddosProtection': ddosProtection};
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyDdosProtectionConfigResponseComputeV1(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}
