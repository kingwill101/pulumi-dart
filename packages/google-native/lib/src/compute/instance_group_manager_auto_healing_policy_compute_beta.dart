// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerAutoHealingPolicyComputeBeta {
  /// The URL for the health check that signals autohealing.
  final String? healthCheck;

  /// The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final int? initialDelaySec;

  /// Creates a new [InstanceGroupManagerAutoHealingPolicyComputeBeta].
  /// [healthCheck] The URL for the health check that signals autohealing.
  /// [initialDelaySec] The initial delay is the number of seconds that a new VM takes to initialize and run its startup script. During a VM's initial delay period, the MIG ignores unsuccessful health checks because the VM might be in the startup process. This prevents the MIG from prematurely recreating a VM. If the health check receives a healthy response during the initial delay, it indicates that the startup process is complete and the VM is ready. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  InstanceGroupManagerAutoHealingPolicyComputeBeta({
    this.healthCheck,
    this.initialDelaySec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    final initialDelaySecValue = initialDelaySec;
    if (initialDelaySecValue != null) {
      map['initialDelaySec'] = initialDelaySecValue;
    }
    return map;
  }

  factory InstanceGroupManagerAutoHealingPolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerAutoHealingPolicyComputeBeta(
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
      initialDelaySec:
          map['initialDelaySec'] == null ? null : map['initialDelaySec'] as int,
    );
  }
}
