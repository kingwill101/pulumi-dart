// ignore_for_file: unused_element, unnecessary_cast

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfigResponseDataprocV1beta2 {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Optional. Defines whether instances have Secure Boot enabled.
  final bool enableSecureBoot;

  /// Optional. Defines whether instances have the vTPM enabled.
  final bool enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponseDataprocV1beta2].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  ShieldedInstanceConfigResponseDataprocV1beta2({
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

  factory ShieldedInstanceConfigResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseDataprocV1beta2(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
