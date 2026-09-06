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
  final pulumi.Input<List<String>?>? command;
  /// The config map.
  final pulumi.Input<ConfigMapResponse?>? configMap;
  /// The environment variables to set in the container instance.
  final pulumi.Input<List<EnvironmentVariableResponse>?>? environmentVariables;
  /// The name of the image used to create the container instance.
  final pulumi.Input<String?>? image;
  /// The instance view of the container instance. Only valid in response.
  final pulumi.Input<ContainerPropertiesResponseInstanceView> instanceView;
  /// The liveness probe.
  final pulumi.Input<ContainerProbeResponse?>? livenessProbe;
  /// The user-provided name of the container instance.
  final pulumi.Input<String> name;
  /// The exposed ports on the container instance.
  final pulumi.Input<List<ContainerPortResponse>?>? ports;
  /// The readiness probe.
  final pulumi.Input<ContainerProbeResponse?>? readinessProbe;
  /// The resource requirements of the container instance.
  final pulumi.Input<ResourceRequirementsResponse?>? resources;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinitionResponse?>? securityContext;
  /// The volume mounts available to the container instance.
  final pulumi.Input<List<VolumeMountResponse>?>? volumeMounts;

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
  const ContainerResponse({
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
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configMap: (() { final guardedValue = map['configMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceView: pulumi.Input.fromValue(ContainerPropertiesResponseInstanceView.fromMap((map['instanceView']! as Map).cast<String, dynamic>())),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerProbeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerPortResponse>(guardedValue, (value) => ContainerPortResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readinessProbe: (() { final guardedValue = map['readinessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerProbeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContextDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountResponse>(guardedValue, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
