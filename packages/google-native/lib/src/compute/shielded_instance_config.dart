// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final bool? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final bool? enableVtpm;

  /// Creates a new [ShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfig({
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

  factory ShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfig(
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
