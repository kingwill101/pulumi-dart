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
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }

  factory ClusterClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null ? null : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}

