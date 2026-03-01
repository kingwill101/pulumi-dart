// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfigResponse {
  /// Optional. Whether the instance has integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Optional. Whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Optional. Whether the instance has the vTPM enabled.
  final bool enableVtpm;

  /// Creates a new [GceShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Optional. Whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Whether the instance has Secure Boot enabled.
  /// [enableVtpm] Optional. Whether the instance has the vTPM enabled.
  GceShieldedInstanceConfigResponse({
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

  factory GceShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GceShieldedInstanceConfigResponse(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
