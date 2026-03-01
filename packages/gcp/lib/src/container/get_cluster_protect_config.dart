// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_protect_config_workload_config.dart';

class GetClusterProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final List<GetClusterProtectConfigWorkloadConfig> workloadConfigs;

  /// Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  final String workloadVulnerabilityMode;

  /// Creates a new [GetClusterProtectConfig].
  /// [workloadConfigs] WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  /// [workloadVulnerabilityMode] Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  GetClusterProtectConfig({
    required this.workloadConfigs,
    required this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadConfigs':
          pulumi.Input.encodeList<
            GetClusterProtectConfigWorkloadConfig,
            Map<String, dynamic>
          >(workloadConfigs, (value) => value.toMap()),
      'workloadVulnerabilityMode': workloadVulnerabilityMode,
    };
  }

  factory GetClusterProtectConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterProtectConfig(
      workloadConfigs:
          pulumi.Input.decodeList<GetClusterProtectConfigWorkloadConfig>(
            map['workloadConfigs'],
            (value) => GetClusterProtectConfigWorkloadConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] as String,
    );
  }
}
