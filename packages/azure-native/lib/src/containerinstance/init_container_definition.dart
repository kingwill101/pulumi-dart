// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable.dart';
import 'security_context_definition.dart';
import 'volume_mount.dart';

/// The init container definition.
class InitContainerDefinition {
  /// The command to execute within the init container in exec form.
  final List<String>? command;
  /// The environment variables to set in the init container.
  final List<EnvironmentVariable>? environmentVariables;
  /// The image of the init container.
  final String? image;
  /// The name for the init container.
  final String name;
  /// The container security properties.
  final SecurityContextDefinition? securityContext;
  /// The volume mounts available to the init container.
  final List<VolumeMount>? volumeMounts;

  /// Creates a new [InitContainerDefinition].
  /// [command] The command to execute within the init container in exec form.
  /// [environmentVariables] The environment variables to set in the init container.
  /// [image] The image of the init container.
  /// [name] The name for the init container.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the init container.
  InitContainerDefinition({
    this.command,
    this.environmentVariables,
    this.image,
    required this.name,
    this.securityContext,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': ?image,
      'name': name,
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory InitContainerDefinition.fromMap(Map<String, dynamic> map) {
    return InitContainerDefinition(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      name: map['name'] as String,
      securityContext: map['securityContext'] == null ? null : SecurityContextDefinition.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

