// ignore_for_file: unused_element, unnecessary_cast

import 'autopilot_conversion_status_response.dart';
import 'workload_policy_config_response_container_v1beta1.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotResponseContainerV1beta1 {
  /// ConversionStatus shows conversion status.
  final AutopilotConversionStatusResponse conversionStatus;

  /// Enable Autopilot
  final bool enabled;

  /// Workload policy configuration for Autopilot.
  final WorkloadPolicyConfigResponseContainerV1beta1 workloadPolicyConfig;

  /// Creates a new [AutopilotResponseContainerV1beta1].
  /// [conversionStatus] ConversionStatus shows conversion status.
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  AutopilotResponseContainerV1beta1({
    required this.conversionStatus,
    required this.enabled,
    required this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionStatus': conversionStatus.toMap(),
      'enabled': enabled,
      'workloadPolicyConfig': workloadPolicyConfig.toMap(),
    };
  }

  factory AutopilotResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutopilotResponseContainerV1beta1(
      conversionStatus: AutopilotConversionStatusResponse.fromMap(
        (map['conversionStatus'] as Map).cast<String, dynamic>(),
      ),
      enabled: map['enabled'] as bool,
      workloadPolicyConfig:
          WorkloadPolicyConfigResponseContainerV1beta1.fromMap(
            (map['workloadPolicyConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
