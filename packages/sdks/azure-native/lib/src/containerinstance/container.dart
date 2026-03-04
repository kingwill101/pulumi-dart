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
      'configMap':
          ?pulumi.Input.mapOptionalInputValue<ConfigMap, Map<String, dynamic>>(
            configMap,
            (value) => value.toMap(),
          ),
      'environmentVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvironmentVariable>,
            List<Map<String, dynamic>>
          >(
            environmentVariables,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentVariable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'image': ?image,
      'livenessProbe':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerProbe,
            Map<String, dynamic>
          >(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerPort>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'readinessProbe':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerProbe,
            Map<String, dynamic>
          >(readinessProbe, (value) => value.toMap()),
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRequirements,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'securityContext':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityContextDefinition,
            Map<String, dynamic>
          >(securityContext, (value) => value.toMap()),
      'volumeMounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<VolumeMount>,
            List<Map<String, dynamic>>
          >(
            volumeMounts,
            (value) =>
                pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      command: (() {
        final guardedValue = map['command'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      configMap: (() {
        final guardedValue = map['configMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigMap.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnvironmentVariable>(
            guardedValue,
            (value) => EnvironmentVariable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      livenessProbe: (() {
        final guardedValue = map['livenessProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerProbe.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerPort>(
            guardedValue,
            (value) =>
                ContainerPort.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      readinessProbe: (() {
        final guardedValue = map['readinessProbe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerProbe.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRequirements.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityContext: (() {
        final guardedValue = map['securityContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityContextDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volumeMounts: (() {
        final guardedValue = map['volumeMounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VolumeMount>(
            guardedValue,
            (value) =>
                VolumeMount.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
