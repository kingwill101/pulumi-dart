// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_protect_config_workload_config/get_cluster_protect_config_workload_config.dart';

class GetClusterProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final List<GetClusterProtectConfigWorkloadConfig> workloadConfigs;

  /// Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  final String workloadVulnerabilityMode;

  GetClusterProtectConfig({
    required this.workloadConfigs,
    required this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workloadConfigs'] = pulumi.Input.encodeList<
        GetClusterProtectConfigWorkloadConfig,
        Map<String, dynamic>>(workloadConfigs, (value) => value.toMap());
    map['workloadVulnerabilityMode'] = workloadVulnerabilityMode;
    return map;
  }

  factory GetClusterProtectConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterProtectConfig(
      workloadConfigs:
          pulumi.Input.decodeList<GetClusterProtectConfigWorkloadConfig>(
              map['workloadConfigs'],
              (value) => GetClusterProtectConfigWorkloadConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] as String,
    );
  }
}
