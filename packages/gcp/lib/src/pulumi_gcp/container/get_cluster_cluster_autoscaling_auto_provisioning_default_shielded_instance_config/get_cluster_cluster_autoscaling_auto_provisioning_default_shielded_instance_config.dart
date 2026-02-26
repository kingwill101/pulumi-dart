// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableIntegrityMonitoring'] = enableIntegrityMonitoring;
    map['enableSecureBoot'] = enableSecureBoot;
    return map;
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
