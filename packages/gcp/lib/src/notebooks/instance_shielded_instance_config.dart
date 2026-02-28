// ignore_for_file: unused_element, unnecessary_cast

class InstanceShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
  /// boot integrity of the instance. The attestation is performed against the integrity policy baseline.
  /// This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  /// Enabled by default.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
  /// authentic software by verifying the digital signature of all boot components, and halting the boot process
  /// if signature verification fails.
  /// Disabled by default.
  final bool? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  /// Enabled by default.
  final bool? enableVtpm;

  /// Creates a new [InstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
  /// [enableVtpm] Defines whether the instance has the vTPM enabled.
  InstanceShieldedInstanceConfig({
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

  factory InstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceShieldedInstanceConfig(
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
