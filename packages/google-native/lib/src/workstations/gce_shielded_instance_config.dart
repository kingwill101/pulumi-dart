// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfig {
  /// Optional. Whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;

  /// Optional. Whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  /// Optional. Whether the instance has the vTPM enabled.
  final bool? enableVtpm;

  /// Creates a new [GceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Optional. Whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Whether the instance has Secure Boot enabled.
  /// [enableVtpm] Optional. Whether the instance has the vTPM enabled.
  GceShieldedInstanceConfig({
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

  factory GceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GceShieldedInstanceConfig(
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
