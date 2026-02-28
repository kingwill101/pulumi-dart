// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponseTpuV2alpha1 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfigResponseTpuV2alpha1].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  ShieldedInstanceConfigResponseTpuV2alpha1({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSecureBoot'] = enableSecureBoot;
    return map;
  }

  factory ShieldedInstanceConfigResponseTpuV2alpha1.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseTpuV2alpha1(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
