// ignore_for_file: unused_element, unnecessary_cast

/// ResourceRequirements describes the compute resource requirements.
class GoogleCloudRunV2ResourceRequirements {
  /// Determines whether CPU should be throttled or not outside of requests.
  final bool? cpuIdle;

  /// Only ´memory´ and 'cpu' are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final Map<String, String>? limits;

  /// Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  final bool? startupCpuBoost;

  GoogleCloudRunV2ResourceRequirements({
    this.cpuIdle,
    this.limits,
    this.startupCpuBoost,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuIdleValue = cpuIdle;
    if (cpuIdleValue != null) {
      map['cpuIdle'] = cpuIdleValue;
    }
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue;
    }
    final startupCpuBoostValue = startupCpuBoost;
    if (startupCpuBoostValue != null) {
      map['startupCpuBoost'] = startupCpuBoostValue;
    }
    return map;
  }

  factory GoogleCloudRunV2ResourceRequirements.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2ResourceRequirements(
      cpuIdle: map['cpuIdle'] == null ? null : map['cpuIdle'] as bool,
      limits: map['limits'] == null
          ? null
          : (map['limits'] as Map).cast<String, String>(),
      startupCpuBoost: map['startupCpuBoost'] == null
          ? null
          : map['startupCpuBoost'] as bool,
    );
  }
}
