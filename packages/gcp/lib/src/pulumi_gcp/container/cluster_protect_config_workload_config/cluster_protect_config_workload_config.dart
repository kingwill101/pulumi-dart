// ignore_for_file: unused_element, unnecessary_cast

class ClusterProtectConfigWorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  final String auditMode;

  ClusterProtectConfigWorkloadConfig({
    required this.auditMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditMode'] = auditMode;
    return map;
  }

  factory ClusterProtectConfigWorkloadConfig.fromMap(Map<String, dynamic> map) {
    return ClusterProtectConfigWorkloadConfig(
      auditMode: map['auditMode'] as String,
    );
  }
}
