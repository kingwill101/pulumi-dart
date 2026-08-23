// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_app_probe.dart';
import 'container_resources.dart';
import 'environment_var.dart';
import 'volume_mount.dart';

/// Container App container definition
class Container {
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
  /// List of probes for the container.
  final pulumi.Input<List<ContainerAppProbe>>? probes;
  /// Container resource requirements.
  final pulumi.Input<ContainerResources>? resources;
  /// Container volume mounts.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

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
  const Container({
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
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ContainerAppProbe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ContainerAppProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVar>(guardedValue, (value) => EnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerAppProbe>(guardedValue, (value) => ContainerAppProbe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMount>(guardedValue, (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
