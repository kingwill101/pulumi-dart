// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfigResponseWorkstationsV1beta {
  /// Optional. Whether the instance has integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Optional. Whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Optional. Whether the instance has the vTPM enabled.
  final bool enableVtpm;

  GceShieldedInstanceConfigResponseWorkstationsV1beta({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
    required this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableIntegrityMonitoring'] = enableIntegrityMonitoring;
    map['enableSecureBoot'] = enableSecureBoot;
    map['enableVtpm'] = enableVtpm;
    return map;
  }

  factory GceShieldedInstanceConfigResponseWorkstationsV1beta.fromMap(
      Map<String, dynamic> map) {
    return GceShieldedInstanceConfigResponseWorkstationsV1beta(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
