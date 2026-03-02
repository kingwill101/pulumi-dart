// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerResourceSettings {
  /// Number of vCPUs request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? cpu;
  /// Number of Nvidia GPU cards request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? gpu;
  /// Memory size request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? memory;

  /// Creates a new [ContainerResourceSettings].
  /// [cpu] Number of vCPUs request/limit for container. More info:
  /// [gpu] Number of Nvidia GPU cards request/limit for container. More info:
  /// [memory] Memory size request/limit for container. More info:
  ContainerResourceSettings({
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

  factory ContainerResourceSettings.fromMap(Map<String, dynamic> map) {
    return ContainerResourceSettings(
      cpu: map['cpu'] == null ? null : (map['cpu'] as String).input(),
      gpu: map['gpu'] == null ? null : (map['gpu'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
    );
  }
}

