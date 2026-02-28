// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigGceClusterConfigShieldedInstanceConfig {
  /// Defines whether instances have integrity monitoring enabled.
  ///
  /// - - -
  final bool? enableIntegrityMonitoring;

  /// Defines whether instances have Secure Boot enabled.
  final bool? enableSecureBoot;

  /// Defines whether instances have the [vTPM](https://cloud.google.com/security/shielded-cloud/shielded-vm#vtpm) enabled.
  final bool? enableVtpm;

  /// Creates a new [ClusterClusterConfigGceClusterConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Defines whether instances have the [vTPM](https://cloud.google.com/security/shielded-cloud/shielded-vm#vtpm) enabled.
  ClusterClusterConfigGceClusterConfigShieldedInstanceConfig({
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

  factory ClusterClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigShieldedInstanceConfig(
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
