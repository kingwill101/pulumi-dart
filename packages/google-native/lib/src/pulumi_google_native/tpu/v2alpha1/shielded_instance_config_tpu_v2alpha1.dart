// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigTpuV2alpha1 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  ShieldedInstanceConfigTpuV2alpha1({
    this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableSecureBootValue = enableSecureBoot;
    if (enableSecureBootValue != null) {
      map['enableSecureBoot'] = enableSecureBootValue;
    }
    return map;
  }

  factory ShieldedInstanceConfigTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigTpuV2alpha1(
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
