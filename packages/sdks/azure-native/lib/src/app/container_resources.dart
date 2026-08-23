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
  const ContainerResources({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
