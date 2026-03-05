// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App container resource requirements.
class ContainerResourcesResponse {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;
  /// Ephemeral Storage, e.g. "1Gi"
  final pulumi.Input<String> ephemeralStorage;
  /// Required GPU in cores for GPU based app, e.g. 1.0
  final pulumi.Input<double>? gpu;
  /// Required memory, e.g. "250Mb"
  final pulumi.Input<String>? memory;

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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ephemeralStorage: pulumi.Input.fromValue(map['ephemeralStorage'] as String),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

