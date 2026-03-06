// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerResourceSettingsResponse {
  /// Number of vCPUs request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? cpu;
  /// Number of Nvidia GPU cards request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? gpu;
  /// Memory size request/limit for container. More info:
  /// https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
  final pulumi.Input<String>? memory;

  /// Creates a new [ContainerResourceSettingsResponse].
  /// [cpu] Number of vCPUs request/limit for container. More info:
  /// [gpu] Number of Nvidia GPU cards request/limit for container. More info:
  /// [memory] Memory size request/limit for container. More info:
  const ContainerResourceSettingsResponse({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

