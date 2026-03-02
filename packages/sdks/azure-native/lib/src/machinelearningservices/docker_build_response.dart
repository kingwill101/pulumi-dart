// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_image_platform_response.dart';

/// Class to represent configuration settings for Docker Build
class DockerBuildResponse {
  /// Path to a snapshot of the Docker Context. This property is only valid if Dockerfile is specified.
  /// The path is relative to the asset path which must contain a single Blob URI value.
  /// <seealso href="https://docs.docker.com/engine/context/working-with-contexts/" />
  final pulumi.Input<String>? context;
  /// Enum to determine docker specification type. Must be either Build or Image.
  /// Expected value is 'Build'.
  final pulumi.Input<String> dockerSpecificationType;
  /// [Required] Docker command line instructions to assemble an image.
  /// <seealso href="https://repo2docker.readthedocs.io/en/latest/config_files.html#dockerfile-advanced-environments" />
  final pulumi.Input<String> dockerfile;
  /// The platform information of the docker image.
  final pulumi.Input<DockerImagePlatformResponse>? platform;

  /// Creates a new [DockerBuildResponse].
  /// [context] Path to a snapshot of the Docker Context. This property is only valid if Dockerfile is specified.
  /// [dockerSpecificationType] Enum to determine docker specification type. Must be either Build or Image.
  /// [dockerfile] [Required] Docker command line instructions to assemble an image.
  /// [platform] The platform information of the docker image.
  DockerBuildResponse({
    this.context,
    required this.dockerSpecificationType,
    required this.dockerfile,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'dockerSpecificationType': dockerSpecificationType,
      'dockerfile': dockerfile,
      'platform': ?pulumi.Input.mapOptionalInputValue<DockerImagePlatformResponse, Map<String, dynamic>>(platform, (value) => value.toMap()),
    };
  }

  factory DockerBuildResponse.fromMap(Map<String, dynamic> map) {
    return DockerBuildResponse(
      context: map['context'] == null ? null : (map['context']! as String).input(),
      dockerSpecificationType: (map['dockerSpecificationType'] as String).input(),
      dockerfile: (map['dockerfile'] as String).input(),
      platform: map['platform'] == null ? null : (DockerImagePlatformResponse.fromMap((map['platform']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

