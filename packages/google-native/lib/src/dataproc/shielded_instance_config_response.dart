// ignore_for_file: unused_element, unnecessary_cast

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfigResponse {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Optional. Defines whether instances have Secure Boot enabled.
  final bool enableSecureBoot;

  /// Optional. Defines whether instances have the vTPM enabled.
  final bool enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  ShieldedInstanceConfigResponse({
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

  factory ShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
