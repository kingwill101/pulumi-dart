// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_app_probe_response.dart';
import 'container_resources_response.dart';
import 'environment_var_response.dart';
import 'volume_mount_response.dart';

/// Container App container definition
class ContainerResponse {
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
  /// List of probes for the container.
  final pulumi.Input<List<ContainerAppProbeResponse>>? probes;
  /// Container resource requirements.
  final pulumi.Input<ContainerResourcesResponse>? resources;
  /// Container volume mounts.
  final pulumi.Input<List<VolumeMountResponse>>? volumeMounts;

  /// Creates a new [ContainerResponse].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [imageType] The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  /// [name] Custom container name.
  /// [probes] List of probes for the container.
  /// [resources] Container resource requirements.
  /// [volumeMounts] Container volume mounts.
  ContainerResponse({
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
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVarResponse>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ContainerAppProbeResponse>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ContainerAppProbeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<ContainerResourcesResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountResponse>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      command: map['command'] == null ? null : ((map['command']! as List).cast<String>()).input(),
      env: map['env'] == null ? null : (pulumi.Input.decodeList<EnvironmentVarResponse>(map['env']!, (value) => EnvironmentVarResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      imageType: map['imageType'] == null ? null : (map['imageType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<ContainerAppProbeResponse>(map['probes']!, (value) => ContainerAppProbeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : (ContainerResourcesResponse.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts']!, (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

