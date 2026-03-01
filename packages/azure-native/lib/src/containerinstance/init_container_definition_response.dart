// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'init_container_properties_definition_response_instance_view.dart';
import 'security_context_definition_response.dart';
import 'volume_mount_response.dart';

/// The init container definition.
class InitContainerDefinitionResponse {
  /// The command to execute within the init container in exec form.
  final List<String>? command;
  /// The environment variables to set in the init container.
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// The image of the init container.
  final String? image;
  /// The instance view of the init container. Only valid in response.
  final InitContainerPropertiesDefinitionResponseInstanceView instanceView;
  /// The name for the init container.
  final String name;
  /// The container security properties.
  final SecurityContextDefinitionResponse? securityContext;
  /// The volume mounts available to the init container.
  final List<VolumeMountResponse>? volumeMounts;

  /// Creates a new [InitContainerDefinitionResponse].
  /// [command] The command to execute within the init container in exec form.
  /// [environmentVariables] The environment variables to set in the init container.
  /// [image] The image of the init container.
  /// [instanceView] The instance view of the init container. Only valid in response.
  /// [name] The name for the init container.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the init container.
  InitContainerDefinitionResponse({
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
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image,
      'instanceView': instanceView.toMap(),
      'name': name,
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory InitContainerDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return InitContainerDefinitionResponse(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      instanceView: InitContainerPropertiesDefinitionResponseInstanceView.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      securityContext: map['securityContext'] == null ? null : SecurityContextDefinitionResponse.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

