// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resources.dart';
import 'environment_var.dart';
import 'volume_mount.dart';

/// Container App init container definition
class InitContainer {
  /// Container start command arguments.
  final pulumi.Input<List<String>>? args;
  /// Container start command.
  final pulumi.Input<List<String>>? command;
  /// Container environment variables.
  final pulumi.Input<List<EnvironmentVar>>? env;
  /// Container image tag.
  final pulumi.Input<String>? image;
  /// The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  final pulumi.Input<String>? imageType;
  /// Custom container name.
  final pulumi.Input<String>? name;
  /// Container resource requirements.
  final pulumi.Input<ContainerResources>? resources;
  /// Container volume mounts.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

  /// Creates a new [InitContainer].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [imageType] The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  /// [name] Custom container name.
  /// [resources] Container resource requirements.
  /// [volumeMounts] Container volume mounts.
  InitContainer({
    this.args,
    this.command,
    this.env,
    this.image,
    this.imageType,
    this.name,
    this.resources,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'resources': ?pulumi.Input.mapOptionalInputValue<ContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InitContainer.fromMap(Map<String, dynamic> map) {
    return InitContainer(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
      env: map['env'] == null ? null : (pulumi.Input.decodeList<EnvironmentVar>(map['env'], (value) => EnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      imageType: map['imageType'] == null ? null : (map['imageType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resources: map['resources'] == null ? null : (ContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

