// ignore_for_file: unused_element, unnecessary_cast

import 'workload_config_response.dart';

/// ProtectConfig defines the flags needed to enable/disable features for the Protect API.
class ProtectConfigResponse {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final WorkloadConfigResponse workloadConfig;

  /// Sets which mode to use for Protect workload vulnerability scanning feature.
  final String workloadVulnerabilityMode;

  ProtectConfigResponse({
    required this.workloadConfig,
    required this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workloadConfig'] = workloadConfig.toMap();
    map['workloadVulnerabilityMode'] = workloadVulnerabilityMode;
    return map;
  }

  factory ProtectConfigResponse.fromMap(Map<String, dynamic> map) {
    return ProtectConfigResponse(
      workloadConfig: WorkloadConfigResponse.fromMap(
          (map['workloadConfig'] as Map).cast<String, dynamic>()),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] as String,
    );
  }
}
