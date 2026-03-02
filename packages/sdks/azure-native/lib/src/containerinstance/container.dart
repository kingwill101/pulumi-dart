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
  final pulumi.Input<List<String>>? command;
  /// The config map.
  final pulumi.Input<ConfigMap>? configMap;
  /// The environment variables to set in the container instance.
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// The name of the image used to create the container instance.
  final pulumi.Input<String>? image;
  /// The liveness probe.
  final pulumi.Input<ContainerProbe>? livenessProbe;
  /// The user-provided name of the container instance.
  final pulumi.Input<String> name;
  /// The exposed ports on the container instance.
  final pulumi.Input<List<ContainerPort>>? ports;
  /// The readiness probe.
  final pulumi.Input<ContainerProbe>? readinessProbe;
  /// The resource requirements of the container instance.
  final pulumi.Input<ResourceRequirements>? resources;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinition>? securityContext;
  /// The volume mounts available to the container instance.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

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
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMap, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ContainerProbe, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ContainerProbe, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextDefinition, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
      configMap: map['configMap'] == null ? null : (ConfigMap.fromMap((map['configMap'] as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ContainerProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ContainerPort>(map['ports'], (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (ContainerProbe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      securityContext: map['securityContext'] == null ? null : (SecurityContextDefinition.fromMap((map['securityContext'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

