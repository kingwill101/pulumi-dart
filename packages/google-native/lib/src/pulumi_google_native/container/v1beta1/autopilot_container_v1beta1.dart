// ignore_for_file: unused_element, unnecessary_cast

import 'workload_policy_config_container_v1beta1.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotContainerV1beta1 {
  /// ConversionStatus shows conversion status.
  final Map<String, dynamic>? conversionStatus;

  /// Enable Autopilot
  final bool? enabled;

  /// Workload policy configuration for Autopilot.
  final WorkloadPolicyConfigContainerV1beta1? workloadPolicyConfig;

  AutopilotContainerV1beta1({
    this.conversionStatus,
    this.enabled,
    this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conversionStatusValue = conversionStatus;
    if (conversionStatusValue != null) {
      map['conversionStatus'] = conversionStatusValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final workloadPolicyConfigValue = workloadPolicyConfig;
    if (workloadPolicyConfigValue != null) {
      map['workloadPolicyConfig'] = workloadPolicyConfigValue.toMap();
    }
    return map;
  }

  factory AutopilotContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutopilotContainerV1beta1(
      conversionStatus: map['conversionStatus'] == null
          ? null
          : (map['conversionStatus'] as Map).cast<String, dynamic>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      workloadPolicyConfig: map['workloadPolicyConfig'] == null
          ? null
          : WorkloadPolicyConfigContainerV1beta1.fromMap(
              (map['workloadPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
