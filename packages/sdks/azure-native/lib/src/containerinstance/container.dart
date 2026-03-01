// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map.dart';
import 'container_port.dart';
import 'container_probe.dart';
import 'environment_variable.dart';
import 'resource_requirements.dart';
import 'security_context_definition.dart';
import 'volume_mount.dart';

/// A container instance.
class Container {
  /// The commands to execute within the container instance in exec form.
  final List<String>? command;
  /// The config map.
  final ConfigMap? configMap;
  /// The environment variables to set in the container instance.
  final List<EnvironmentVariable>? environmentVariables;
  /// The name of the image used to create the container instance.
  final String? image;
  /// The liveness probe.
  final ContainerProbe? livenessProbe;
  /// The user-provided name of the container instance.
  final String name;
  /// The exposed ports on the container instance.
  final List<ContainerPort>? ports;
  /// The readiness probe.
  final ContainerProbe? readinessProbe;
  /// The resource requirements of the container instance.
  final ResourceRequirements? resources;
  /// The container security properties.
  final SecurityContextDefinition? securityContext;
  /// The volume mounts available to the container instance.
  final List<VolumeMount>? volumeMounts;

  /// Creates a new [Container].
  /// [command] The commands to execute within the container instance in exec form.
  /// [configMap] The config map.
  /// [environmentVariables] The environment variables to set in the container instance.
  /// [image] The name of the image used to create the container instance.
  /// [livenessProbe] The liveness probe.
  /// [name] The user-provided name of the container instance.
  /// [ports] The exposed ports on the container instance.
  /// [readinessProbe] The readiness probe.
  /// [resources] The resource requirements of the container instance.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the container instance.
  Container({
    this.command,
    this.configMap,
    this.environmentVariables,
    this.image,
    this.livenessProbe,
    required this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.securityContext,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'configMap': ?configMap == null ? null : configMap!.toMap(),
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      configMap: map['configMap'] == null ? null : ConfigMap.fromMap((map['configMap'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      livenessProbe: map['livenessProbe'] == null ? null : ContainerProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerPort>(map['ports'], (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : ContainerProbe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      securityContext: map['securityContext'] == null ? null : SecurityContextDefinition.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

