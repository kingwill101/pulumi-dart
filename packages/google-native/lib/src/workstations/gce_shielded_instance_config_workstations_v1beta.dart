// ignore_for_file: unused_element, unnecessary_cast

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfigWorkstationsV1beta {
  /// Optional. Whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;

  /// Optional. Whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  /// Optional. Whether the instance has the vTPM enabled.
  final bool? enableVtpm;

  /// Creates a new [GceShieldedInstanceConfigWorkstationsV1beta].
  /// [enableIntegrityMonitoring] Optional. Whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Whether the instance has Secure Boot enabled.
  /// [enableVtpm] Optional. Whether the instance has the vTPM enabled.
  GceShieldedInstanceConfigWorkstationsV1beta({
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

  factory GceShieldedInstanceConfigWorkstationsV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return GceShieldedInstanceConfigWorkstationsV1beta(
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
