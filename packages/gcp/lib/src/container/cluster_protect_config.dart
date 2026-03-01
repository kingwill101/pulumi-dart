// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_protect_config_workload_config.dart';

class ClusterProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations. Structure is documented below
  final ClusterProtectConfigWorkloadConfig? workloadConfig;

  /// Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  final String? workloadVulnerabilityMode;

  /// Creates a new [ClusterProtectConfig].
  /// [workloadConfig] WorkloadConfig defines which actions are enabled for a cluster's workload configurations. Structure is documented below
  /// [workloadVulnerabilityMode] Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  ClusterProtectConfig({this.workloadConfig, this.workloadVulnerabilityMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadConfig': ?workloadConfig == null
          ? null
          : workloadConfig!.toMap(),
      'workloadVulnerabilityMode': ?workloadVulnerabilityMode,
    };
  }

  factory ClusterProtectConfig.fromMap(Map<String, dynamic> map) {
    return ClusterProtectConfig(
      workloadConfig: map['workloadConfig'] == null
          ? null
          : ClusterProtectConfigWorkloadConfig.fromMap(
              (map['workloadConfig'] as Map).cast<String, dynamic>(),
            ),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] == null
          ? null
          : map['workloadVulnerabilityMode'] as String,
    );
  }
}
