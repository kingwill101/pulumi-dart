// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_env_var.dart';

/// The spec of a Container.
class GoogleCloudAiplatformV1ContainerSpec {
  /// The arguments to be passed when starting the container.
  final List<String>? args;

  /// The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  final List<String>? command;

  /// Environment variables to be passed to the container. Maximum limit is 100.
  final List<GoogleCloudAiplatformV1EnvVar>? env;

  /// The URI of a container image in the Container Registry that is to be run on each worker replica.
  final String imageUri;

  GoogleCloudAiplatformV1ContainerSpec({
    this.args,
    this.command,
    this.env,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final commandValue = command;
    if (commandValue != null) {
      map['command'] = commandValue;
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] =
          Input.encodeList<GoogleCloudAiplatformV1EnvVar, Map<String, dynamic>>(
              envValue, (value) => value.toMap());
    }
    map['imageUri'] = imageUri;
    return map;
  }

  factory GoogleCloudAiplatformV1ContainerSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ContainerSpec(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      env: map['env'] == null
          ? null
          : Input.decodeList<GoogleCloudAiplatformV1EnvVar>(
              map['env'],
              (value) => GoogleCloudAiplatformV1EnvVar.fromMap(
                  (value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] as String,
    );
  }
}
