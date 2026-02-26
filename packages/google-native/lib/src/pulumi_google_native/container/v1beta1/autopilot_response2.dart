// ignore_for_file: unused_element, unnecessary_cast

import 'autopilot_conversion_status_response.dart';
import 'workload_policy_config_response2.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotResponse2 {
  /// ConversionStatus shows conversion status.
  final AutopilotConversionStatusResponse conversionStatus;

  /// Enable Autopilot
  final bool enabled;

  /// Workload policy configuration for Autopilot.
  final WorkloadPolicyConfigResponse2 workloadPolicyConfig;

  AutopilotResponse2({
    required this.conversionStatus,
    required this.enabled,
    required this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionStatus'] = conversionStatus.toMap();
    map['enabled'] = enabled;
    map['workloadPolicyConfig'] = workloadPolicyConfig.toMap();
    return map;
  }

  factory AutopilotResponse2.fromMap(Map<String, dynamic> map) {
    return AutopilotResponse2(
      conversionStatus: AutopilotConversionStatusResponse.fromMap(
          (map['conversionStatus'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      workloadPolicyConfig: WorkloadPolicyConfigResponse2.fromMap(
          (map['workloadPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
