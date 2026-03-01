// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_app_probe.dart';
import 'container_resources.dart';
import 'environment_var.dart';
import 'volume_mount.dart';

/// Container App container definition
class Container {
  /// Container start command arguments.
  final List<String>? args;
  /// Container start command.
  final List<String>? command;
  /// Container environment variables.
  final List<EnvironmentVar>? env;
  /// Container image tag.
  final String? image;
  /// The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  final String? imageType;
  /// Custom container name.
  final String? name;
  /// List of probes for the container.
  final List<ContainerAppProbe>? probes;
  /// Container resource requirements.
  final ContainerResources? resources;
  /// Container volume mounts.
  final List<VolumeMount>? volumeMounts;

  /// Creates a new [Container].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [imageType] The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  /// [name] Custom container name.
  /// [probes] List of probes for the container.
  /// [resources] Container resource requirements.
  /// [volumeMounts] Container volume mounts.
  Container({
    this.args,
    this.command,
    this.env,
    this.image,
    this.imageType,
    this.name,
    this.probes,
    this.resources,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvironmentVar, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'probes': ?probes == null ? null : pulumi.Input.encodeList<ContainerAppProbe, Map<String, dynamic>>(probes!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvironmentVar>(map['env'], (value) => EnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<ContainerAppProbe>(map['probes'], (value) => ContainerAppProbe.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

