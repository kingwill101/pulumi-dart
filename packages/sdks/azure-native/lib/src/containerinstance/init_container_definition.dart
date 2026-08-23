// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable.dart';
import 'security_context_definition.dart';
import 'volume_mount.dart';

/// The init container definition.
class InitContainerDefinition {
  /// The command to execute within the init container in exec form.
  final pulumi.Input<List<String>>? command;
  /// The environment variables to set in the init container.
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// The image of the init container.
  final pulumi.Input<String>? image;
  /// The name for the init container.
  final pulumi.Input<String> name;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinition>? securityContext;
  /// The volume mounts available to the init container.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

  /// Creates a new [InitContainerDefinition].
  /// [command] The command to execute within the init container in exec form.
  /// [environmentVariables] The environment variables to set in the init container.
  /// [image] The image of the init container.
  /// [name] The name for the init container.
  /// [securityContext] The container security properties.
  /// [volumeMounts] The volume mounts available to the init container.
  const InitContainerDefinition({
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
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'name': name,
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextDefinition, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InitContainerDefinition.fromMap(Map<String, dynamic> map) {
    return InitContainerDefinition(
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContextDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMount>(guardedValue, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
