// ignore_for_file: unused_element, unnecessary_cast


class ContainerResourceSettingsResponse {
  /// Number of vCPUs request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final String? cpu;
  /// Number of Nvidia GPU cards request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final String? gpu;
  /// Memory size request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final String? memory;

  /// Creates a new [ContainerResourceSettingsResponse].
  /// [cpu] Number of vCPUs request/limit for container. More info:
  /// [gpu] Number of Nvidia GPU cards request/limit for container. More info:
  /// [memory] Memory size request/limit for container. More info:
  ContainerResourceSettingsResponse({
    this.cpu,
    this.gpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'gpu': ?gpu,
      'memory': ?memory,
    };
  }

  factory ContainerResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResourceSettingsResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      gpu: map['gpu'] == null ? null : map['gpu'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

