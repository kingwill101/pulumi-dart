// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceShieldedInstanceConfig {
  /// - Whether integrity monitoring is enabled for the instance.
  final bool enableIntegrityMonitoring;

  /// - Whether secure boot is enabled for the instance.
  final bool enableSecureBoot;

  /// - Whether the instance uses vTPM.
  final bool enableVtpm;

  /// Creates a new [GetInstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] - Whether integrity monitoring is enabled for the instance.
  /// [enableSecureBoot] - Whether secure boot is enabled for the instance.
  /// [enableVtpm] - Whether the instance uses vTPM.
  GetInstanceShieldedInstanceConfig({
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

  factory GetInstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] as bool,
    );
  }
}
