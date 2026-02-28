// ignore_for_file: unused_element, unnecessary_cast


/// A set of Shielded VM options.
class ShieldedVmConfigComputeBeta {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled.
  final bool? enableVtpm;

  /// Creates a new [ShieldedVmConfigComputeBeta].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled.
  ShieldedVmConfigComputeBeta({
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

  factory ShieldedVmConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedVmConfigComputeBeta(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null ? null : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}

