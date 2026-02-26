// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded VM options.
class ShieldedVmConfigResponse2 {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  final bool enableVtpm;

  ShieldedVmConfigResponse2({
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

  factory ShieldedVmConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ShieldedVmConfigResponse2(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
