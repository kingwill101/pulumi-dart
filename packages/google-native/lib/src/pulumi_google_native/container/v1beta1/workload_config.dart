// ignore_for_file: unused_element, unnecessary_cast

import 'workload_config_audit_mode.dart';

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final WorkloadConfigAuditMode? auditMode;

  WorkloadConfig({
    this.auditMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditModeValue = auditMode;
    if (auditModeValue != null) {
      map['auditMode'] = auditModeValue.value;
    }
    return map;
  }

  factory WorkloadConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadConfig(
      auditMode: map['auditMode'] == null
          ? null
          : WorkloadConfigAuditMode.fromValue(map['auditMode'] as String),
    );
  }
}
