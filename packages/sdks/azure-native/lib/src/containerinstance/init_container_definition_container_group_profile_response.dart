// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_container_group_profile_response.dart';
import 'init_container_properties_definition_response_instance_view.dart';
import 'security_context_definition_response.dart';
import 'volume_mount_response.dart';

/// The init container definition.
class InitContainerDefinitionContainerGroupProfileResponse {
  /// The command to execute within the init container in exec form.
  final pulumi.Input<List<String>>? command;
  /// The environment variables to set in the init container.
  final pulumi.Input<List<EnvironmentVariableContainerGroupProfileResponse>>? environmentVariables;
  /// The image of the init container.
  final pulumi.Input<String>? image;
  /// The instance view of the init container. Only valid in response.
  final pulumi.Input<InitContainerPropertiesDefinitionResponseInstanceView> instanceView;
  /// The name for the init container.
  final pulumi.Input<String> name;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinitionResponse>? securityContext;
  /// The volume mounts available to the init container.
  final pulumi.Input<List<VolumeMountResponse>>? volumeMounts;

  /// Creates a new [InitContainerDefinitionContainerGroupProfileResponse].
  /// [command] The command to execute within the init container in exec form.
  /// [environmentVariables] The environment variables to set in the init container.
  /// [image] The image of the init container.
  /// [instanceView] The instance view of the init container. Only valid in response.
  /// [name] The name for the init container.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the init container.
  const InitContainerDefinitionContainerGroupProfileResponse({
    this.command,
    this.environmentVariables,
    this.image,
    required this.instanceView,
    required this.name,
    this.securityContext,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariableContainerGroupProfileResponse>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariableContainerGroupProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'instanceView': pulumi.Input.mapInputValue<InitContainerPropertiesDefinitionResponseInstanceView, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'name': name,
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextDefinitionResponse, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InitContainerDefinitionContainerGroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return InitContainerDefinitionContainerGroupProfileResponse(
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariableContainerGroupProfileResponse>(guardedValue, (value) => EnvironmentVariableContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceView: pulumi.Input.fromValue(InitContainerPropertiesDefinitionResponseInstanceView.fromMap((map['instanceView']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContextDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountResponse>(guardedValue, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
