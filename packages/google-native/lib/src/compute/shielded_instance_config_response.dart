// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final bool enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final bool enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final bool enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfigResponse({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
    required this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
      'enableVtpm': enableVtpm,
    };
  }

  factory ShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
