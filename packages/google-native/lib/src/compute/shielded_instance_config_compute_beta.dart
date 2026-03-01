// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigComputeBeta {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final bool? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final bool? enableVtpm;

  /// Creates a new [ShieldedInstanceConfigComputeBeta].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfigComputeBeta({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }

  factory ShieldedInstanceConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigComputeBeta(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null
          ? null
          : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}
