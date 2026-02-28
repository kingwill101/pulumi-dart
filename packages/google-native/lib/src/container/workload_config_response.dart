// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfigResponse {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final String auditMode;

  /// Creates a new [WorkloadConfigResponse].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads.
  WorkloadConfigResponse({
    required this.auditMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditMode'] = auditMode;
    return map;
  }

  factory WorkloadConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadConfigResponse(
      auditMode: map['auditMode'] as String,
    );
  }
}
