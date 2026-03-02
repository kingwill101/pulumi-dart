// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App container resource requirements.
class ContainerResources {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;
  /// Required GPU in cores for GPU based app, e.g. 1.0
  final pulumi.Input<double>? gpu;
  /// Required memory, e.g. "250Mb"
  final pulumi.Input<String>? memory;

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
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      gpu: map['gpu'] == null ? null : (map['gpu']! as double).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

