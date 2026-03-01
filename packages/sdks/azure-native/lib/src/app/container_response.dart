// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_app_probe_response.dart';
import 'container_resources_response.dart';
import 'environment_var_response.dart';
import 'volume_mount_response.dart';

/// Container App container definition
class ContainerResponse {
  /// Container start command arguments.
  final List<String>? args;
  /// Container start command.
  final List<String>? command;
  /// Container environment variables.
  final List<EnvironmentVarResponse>? env;
  /// Container image tag.
  final String? image;
  /// The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
  final String? imageType;
  /// Custom container name.
  final String? name;
  /// List of probes for the container.
  final List<ContainerAppProbeResponse>? probes;
  /// Container resource requirements.
  final ContainerResourcesResponse? resources;
  /// Container volume mounts.
  final List<VolumeMountResponse>? volumeMounts;

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
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvironmentVarResponse, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'image': ?image,
      'imageType': ?imageType,
      'name': ?name,
      'probes': ?probes == null ? null : pulumi.Input.encodeList<ContainerAppProbeResponse, Map<String, dynamic>>(probes!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvironmentVarResponse>(map['env'], (value) => EnvironmentVarResponse.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<ContainerAppProbeResponse>(map['probes'], (value) => ContainerAppProbeResponse.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ContainerResourcesResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountResponse>(map['volumeMounts'], (value) => VolumeMountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

