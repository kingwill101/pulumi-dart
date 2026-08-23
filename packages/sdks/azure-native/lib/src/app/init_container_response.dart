// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resources_response.dart';
import 'environment_var_response.dart';
import 'volume_mount_response.dart';

/// Container App init container definition
class InitContainerResponse {
  /// Container start command arguments.
  final pulumi.Input<List<String>>? args;
  /// Container start command.
  final pulumi.Input<List<String>>? command;
  /// Container environment variables.
  final pulumi.Input<List<EnvironmentVarResponse>>? env;
  /// Container image tag.
  final pulumi.Input<String>? image;
  /// The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  final pulumi.Input<String>? imageType;
  /// Custom container name.
  final pulumi.Input<String>? name;
  /// Container resource requirements.
  final pulumi.Input<ContainerResourcesResponse>? resources;
  /// Container volume mounts.
  final pulumi.Input<List<VolumeMountResponse>>? volumeMounts;

  /// Creates a new [InitContainerResponse].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [imageType] The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  /// [name] Custom container name.
  /// [resources] Container resource requirements.
  /// [volumeMounts] Container volume mounts.
  const InitContainerResponse({
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
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVarResponse>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'resources': ?pulumi.Input.mapOptionalInputValue<ContainerResourcesResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InitContainerResponse.fromMap(Map<String, dynamic> map) {
    return InitContainerResponse(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVarResponse>(guardedValue, (value) => EnvironmentVarResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountResponse>(guardedValue, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
