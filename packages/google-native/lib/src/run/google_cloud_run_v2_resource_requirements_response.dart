// ignore_for_file: unused_element, unnecessary_cast

/// ResourceRequirements describes the compute resource requirements.
class GoogleCloudRunV2ResourceRequirementsResponse {
  /// Determines whether CPU should be throttled or not outside of requests.
  final bool cpuIdle;

  /// Only ´memory´ and 'cpu' are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final Map<String, String> limits;

  /// Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  final bool startupCpuBoost;

  /// Creates a new [GoogleCloudRunV2ResourceRequirementsResponse].
  /// [cpuIdle] Determines whether CPU should be throttled or not outside of requests.
  /// [limits] Only ´memory´ and 'cpu' are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  /// [startupCpuBoost] Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  GoogleCloudRunV2ResourceRequirementsResponse({
    required this.cpuIdle,
    required this.limits,
    required this.startupCpuBoost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuIdle': cpuIdle,
      'limits': limits,
      'startupCpuBoost': startupCpuBoost,
    };
  }

  factory GoogleCloudRunV2ResourceRequirementsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2ResourceRequirementsResponse(
      cpuIdle: map['cpuIdle'] as bool,
      limits: (map['limits'] as Map).cast<String, String>(),
      startupCpuBoost: map['startupCpuBoost'] as bool,
    );
  }
}
