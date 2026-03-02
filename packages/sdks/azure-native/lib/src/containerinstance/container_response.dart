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
  final pulumi.Input<List<String>>? command;
  /// The config map.
  final pulumi.Input<ConfigMapResponse>? configMap;
  /// The environment variables to set in the container instance.
  final pulumi.Input<List<EnvironmentVariableResponse>>? environmentVariables;
  /// The name of the image used to create the container instance.
  final pulumi.Input<String>? image;
  /// The instance view of the container instance. Only valid in response.
  final pulumi.Input<ContainerPropertiesResponseInstanceView> instanceView;
  /// The liveness probe.
  final pulumi.Input<ContainerProbeResponse>? livenessProbe;
  /// The user-provided name of the container instance.
  final pulumi.Input<String> name;
  /// The exposed ports on the container instance.
  final pulumi.Input<List<ContainerPortResponse>>? ports;
  /// The readiness probe.
  final pulumi.Input<ContainerProbeResponse>? readinessProbe;
  /// The resource requirements of the container instance.
  final pulumi.Input<ResourceRequirementsResponse>? resources;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinitionResponse>? securityContext;
  /// The volume mounts available to the container instance.
  final pulumi.Input<List<VolumeMountResponse>>? volumeMounts;

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
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapResponse, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariableResponse>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'instanceView': pulumi.Input.mapInputValue<ContainerPropertiesResponseInstanceView, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ContainerProbeResponse, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'name': name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ContainerPortResponse>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ContainerPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ContainerProbeResponse, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextDefinitionResponse, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      command: map['command'] == null ? null : ((map['command']! as List).cast<String>()).input(),
      configMap: map['configMap'] == null ? null : (ConfigMapResponse.fromMap((map['configMap']! as Map).cast<String, dynamic>())).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables']!, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      instanceView: (ContainerPropertiesResponseInstanceView.fromMap((map['instanceView'] as Map).cast<String, dynamic>())).input(),
      livenessProbe: map['livenessProbe'] == null ? null : (ContainerProbeResponse.fromMap((map['livenessProbe']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ContainerPortResponse>(map['ports']!, (value) => ContainerPortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      readinessProbe: map['readinessProbe'] == null ? null : (ContainerProbeResponse.fromMap((map['readinessProbe']! as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (ResourceRequirementsResponse.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      securityContext: map['securityContext'] == null ? null : (SecurityContextDefinitionResponse.fromMap((map['securityContext']! as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts']!, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

