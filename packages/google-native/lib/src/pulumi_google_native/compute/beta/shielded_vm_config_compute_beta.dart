// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded VM options.
class ShieldedVmConfigComputeBeta {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  final bool? enableVtpm;

  ShieldedVmConfigComputeBeta({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableIntegrityMonitoringValue = enableIntegrityMonitoring;
    if (enableIntegrityMonitoringValue != null) {
      map['enableIntegrityMonitoring'] = enableIntegrityMonitoringValue;
    }
    final enableSecureBootValue = enableSecureBoot;
    if (enableSecureBootValue != null) {
      map['enableSecureBoot'] = enableSecureBootValue;
    }
    final enableVtpmValue = enableVtpm;
    if (enableVtpmValue != null) {
      map['enableVtpm'] = enableVtpmValue;
    }
    return map;
  }

  factory ShieldedVmConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedVmConfigComputeBeta(
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
