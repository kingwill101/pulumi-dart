// ignore_for_file: unused_element, unnecessary_cast

class GetClusterProtectConfigWorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  final String auditMode;

  GetClusterProtectConfigWorkloadConfig({
    required this.auditMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditMode'] = auditMode;
    return map;
  }

  factory GetClusterProtectConfigWorkloadConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterProtectConfigWorkloadConfig(
      auditMode: map['auditMode'] as String,
    );
  }
}
