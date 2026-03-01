// ignore_for_file: unused_element, unnecessary_cast


/// Container App container resource requirements.
class ContainerResourcesResponse {
  /// Required CPU in cores, e.g. 0.5
  final double? cpu;
  /// Ephemeral Storage, e.g. "1Gi"
  final String ephemeralStorage;
  /// Required GPU in cores for GPU based app, e.g. 1.0
  final double? gpu;
  /// Required memory, e.g. "250Mb"
  final String? memory;

  /// Creates a new [ContainerResourcesResponse].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [ephemeralStorage] Ephemeral Storage, e.g. "1Gi"
  /// [gpu] Required GPU in cores for GPU based app, e.g. 1.0
  /// [memory] Required memory, e.g. "250Mb"
  ContainerResourcesResponse({
    this.cpu,
    required this.ephemeralStorage,
    this.gpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'ephemeralStorage': ephemeralStorage,
      'gpu': ?gpu,
      'memory': ?memory,
    };
  }

  factory ContainerResourcesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResourcesResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      ephemeralStorage: map['ephemeralStorage'] as String,
      gpu: map['gpu'] == null ? null : map['gpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

