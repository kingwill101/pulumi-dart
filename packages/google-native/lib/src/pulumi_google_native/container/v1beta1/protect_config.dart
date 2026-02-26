// ignore_for_file: unused_element, unnecessary_cast

import 'protect_config_workload_vulnerability_mode.dart';
import 'workload_config.dart';

/// ProtectConfig defines the flags needed to enable/disable features for the Protect API.
class ProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final WorkloadConfig? workloadConfig;

  /// Sets which mode to use for Protect workload vulnerability scanning feature.
  final ProtectConfigWorkloadVulnerabilityMode? workloadVulnerabilityMode;

  ProtectConfig({
    this.workloadConfig,
    this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final workloadConfigValue = workloadConfig;
    if (workloadConfigValue != null) {
      map['workloadConfig'] = workloadConfigValue.toMap();
    }
    final workloadVulnerabilityModeValue = workloadVulnerabilityMode;
    if (workloadVulnerabilityModeValue != null) {
      map['workloadVulnerabilityMode'] = workloadVulnerabilityModeValue.value;
    }
    return map;
  }

  factory ProtectConfig.fromMap(Map<String, dynamic> map) {
    return ProtectConfig(
      workloadConfig: map['workloadConfig'] == null
          ? null
          : WorkloadConfig.fromMap(
              (map['workloadConfig'] as Map).cast<String, dynamic>()),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] == null
          ? null
          : ProtectConfigWorkloadVulnerabilityMode.fromValue(
              map['workloadVulnerabilityMode'] as String),
    );
  }
}
