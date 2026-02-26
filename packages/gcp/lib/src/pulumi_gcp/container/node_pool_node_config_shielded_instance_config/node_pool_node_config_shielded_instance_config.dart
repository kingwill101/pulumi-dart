// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  NodePoolNodeConfigShieldedInstanceConfig({
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

  factory NodePoolNodeConfigShieldedInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null
          ? null
          : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
