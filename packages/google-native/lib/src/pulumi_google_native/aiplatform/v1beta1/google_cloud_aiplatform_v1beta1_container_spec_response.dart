// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_env_var_response.dart';

/// The spec of a Container.
class GoogleCloudAiplatformV1beta1ContainerSpecResponse {
  /// The arguments to be passed when starting the container.
  final List<String> args;

  /// The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  final List<String> command;

  /// Environment variables to be passed to the container. Maximum limit is 100.
  final List<GoogleCloudAiplatformV1beta1EnvVarResponse> env;

  /// The URI of a container image in the Container Registry that is to be run on each worker replica.
  final String imageUri;

  GoogleCloudAiplatformV1beta1ContainerSpecResponse({
    required this.args,
    required this.command,
    required this.env,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['command'] = command;
    map['env'] = Input.encodeList<GoogleCloudAiplatformV1beta1EnvVarResponse,
        Map<String, dynamic>>(env, (value) => value.toMap());
    map['imageUri'] = imageUri;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ContainerSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ContainerSpecResponse(
      args: (map['args'] as List).cast<String>(),
      command: (map['command'] as List).cast<String>(),
      env: Input.decodeList<GoogleCloudAiplatformV1beta1EnvVarResponse>(
          map['env'],
          (value) => GoogleCloudAiplatformV1beta1EnvVarResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] as String,
    );
  }
}
