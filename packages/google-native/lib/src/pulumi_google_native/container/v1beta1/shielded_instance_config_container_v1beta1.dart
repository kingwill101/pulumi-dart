// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigContainerV1beta1 {
  /// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.
  final bool? enableSecureBoot;

  ShieldedInstanceConfigContainerV1beta1({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
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
    return map;
  }

  factory ShieldedInstanceConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceConfigContainerV1beta1(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null
          ? null
          : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
