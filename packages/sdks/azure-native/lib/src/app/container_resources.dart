// ignore_for_file: unused_element, unnecessary_cast


/// Container App container resource requirements.
class ContainerResources {
  /// Required CPU in cores, e.g. 0.5
  final double? cpu;
  /// Required GPU in cores for GPU based app, e.g. 1.0
  final double? gpu;
  /// Required memory, e.g. "250Mb"
  final String? memory;

  /// Creates a new [ContainerResources].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [gpu] Required GPU in cores for GPU based app, e.g. 1.0
  /// [memory] Required memory, e.g. "250Mb"
  ContainerResources({
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

  factory ContainerResources.fromMap(Map<String, dynamic> map) {
    return ContainerResources(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      gpu: map['gpu'] == null ? null : map['gpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

