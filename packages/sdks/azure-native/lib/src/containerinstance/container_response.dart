// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_response.dart';
import 'container_port_response.dart';
import 'container_probe_response.dart';
import 'container_properties_response_instance_view.dart';
import 'environment_variable_response.dart';
import 'resource_requirements_response.dart';
import 'security_context_definition_response.dart';
import 'volume_mount_response.dart';

/// A container instance.
class ContainerResponse {
  /// The commands to execute within the container instance in exec form.
  final List<String>? command;
  /// The config map.
  final ConfigMapResponse? configMap;
  /// The environment variables to set in the container instance.
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// The name of the image used to create the container instance.
  final String? image;
  /// The instance view of the container instance. Only valid in response.
  final ContainerPropertiesResponseInstanceView instanceView;
  /// The liveness probe.
  final ContainerProbeResponse? livenessProbe;
  /// The user-provided name of the container instance.
  final String name;
  /// The exposed ports on the container instance.
  final List<ContainerPortResponse>? ports;
  /// The readiness probe.
  final ContainerProbeResponse? readinessProbe;
  /// The resource requirements of the container instance.
  final ResourceRequirementsResponse? resources;
  /// The container security properties.
  final SecurityContextDefinitionResponse? securityContext;
  /// The volume mounts available to the container instance.
  final List<VolumeMountResponse>? volumeMounts;

  /// Creates a new [ContainerResponse].
  /// [command] The commands to execute within the container instance in exec form.
  /// [configMap] The config map.
  /// [environmentVariables] The environment variables to set in the container instance.
  /// [image] The name of the image used to create the container instance.
  /// [instanceView] The instance view of the container instance. Only valid in response.
  /// [livenessProbe] The liveness probe.
  /// [name] The user-provided name of the container instance.
  /// [ports] The exposed ports on the container instance.
  /// [readinessProbe] The readiness probe.
  /// [resources] The resource requirements of the container instance.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the container instance.
  ContainerResponse({
    this.command,
    this.configMap,
    this.environmentVariables,
    this.image,
    required this.instanceView,
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
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image,
      'instanceView': instanceView.toMap(),
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerPortResponse, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      configMap: map['configMap'] == null ? null : ConfigMapResponse.fromMap((map['configMap'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      instanceView: ContainerPropertiesResponseInstanceView.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      livenessProbe: map['livenessProbe'] == null ? null : ContainerProbeResponse.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerPortResponse>(map['ports'], (value) => ContainerPortResponse.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : ContainerProbeResponse.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : ResourceRequirementsResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      securityContext: map['securityContext'] == null ? null : SecurityContextDefinitionResponse.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

