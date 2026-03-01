// ignore_for_file: unused_element, unnecessary_cast

class V2VmShieldedInstanceConfig {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Creates a new [V2VmShieldedInstanceConfig].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  V2VmShieldedInstanceConfig({required this.enableSecureBoot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSecureBoot': enableSecureBoot};
  }

  factory V2VmShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return V2VmShieldedInstanceConfig(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
