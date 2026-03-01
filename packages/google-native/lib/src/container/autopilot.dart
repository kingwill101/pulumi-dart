// ignore_for_file: unused_element, unnecessary_cast

import 'workload_policy_config.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class Autopilot {
  /// Enable Autopilot
  final bool? enabled;

  /// Workload policy configuration for Autopilot.
  final WorkloadPolicyConfig? workloadPolicyConfig;

  /// Creates a new [Autopilot].
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  Autopilot({this.enabled, this.workloadPolicyConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'workloadPolicyConfig': ?workloadPolicyConfig == null
          ? null
          : workloadPolicyConfig!.toMap(),
    };
  }

  factory Autopilot.fromMap(Map<String, dynamic> map) {
    return Autopilot(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      workloadPolicyConfig: map['workloadPolicyConfig'] == null
          ? null
          : WorkloadPolicyConfig.fromMap(
              (map['workloadPolicyConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
