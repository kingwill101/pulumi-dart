// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerResource {
  /// Determines whether CPU is only allocated during requests. True by default if the parent 'resources' field is not set. However, if
  /// 'resources' is set, this field must be explicitly set to true to preserve the default behavior.
  final bool cpuIdle;

  /// Only memory, CPU, and nvidia.com/gpu are supported. Use key 'cpu' for CPU limit, 'memory' for memory limit, 'nvidia.com/gpu' for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6' and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final Map<String, String> limits;

  /// Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  final bool startupCpuBoost;

  /// Creates a new [GetServiceTemplateContainerResource].
  /// [cpuIdle] Determines whether CPU is only allocated during requests. True by default if the parent 'resources' field is not set. However, if
  /// [limits] Only memory, CPU, and nvidia.com/gpu are supported. Use key 'cpu' for CPU limit, 'memory' for memory limit, 'nvidia.com/gpu' for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6' and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  /// [startupCpuBoost] Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.
  GetServiceTemplateContainerResource({
    required this.cpuIdle,
    required this.limits,
    required this.startupCpuBoost,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuIdle'] = cpuIdle;
    map['limits'] = limits;
    map['startupCpuBoost'] = startupCpuBoost;
    return map;
  }

  factory GetServiceTemplateContainerResource.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerResource(
      cpuIdle: map['cpuIdle'] as bool,
      limits: (map['limits'] as Map).cast<String, String>(),
      startupCpuBoost: map['startupCpuBoost'] as bool,
    );
  }
}
