// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_image_platform_response.dart';

/// Class to represent configuration settings for Docker Build
class DockerImageResponse {
  /// [Required] Image name of a custom base image.
  /// <seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" />
  final pulumi.Input<String> dockerImageUri;
  /// Enum to determine docker specification type. Must be either Build or Image.
  /// Expected value is 'Image'.
  final pulumi.Input<String> dockerSpecificationType;
  /// The platform information of the docker image.
  final pulumi.Input<DockerImagePlatformResponse>? platform;

  /// Creates a new [DockerImageResponse].
  /// [dockerImageUri] [Required] Image name of a custom base image.
  /// [dockerSpecificationType] Enum to determine docker specification type. Must be either Build or Image.
  /// [platform] The platform information of the docker image.
  DockerImageResponse({
    required this.dockerImageUri,
    required this.dockerSpecificationType,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImageUri': dockerImageUri,
      'dockerSpecificationType': dockerSpecificationType,
      'platform': ?pulumi.Input.mapOptionalInputValue<DockerImagePlatformResponse, Map<String, dynamic>>(platform, (value) => value.toMap()),
    };
  }

  factory DockerImageResponse.fromMap(Map<String, dynamic> map) {
    return DockerImageResponse(
      dockerImageUri: (map['dockerImageUri'] as String).input(),
      dockerSpecificationType: (map['dockerSpecificationType'] as String).input(),
      platform: map['platform'] == null ? null : (DockerImagePlatformResponse.fromMap((map['platform'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

