// ignore_for_file: unused_element, unnecessary_cast

import 'docker_image_platform.dart';

/// Class to represent configuration settings for Docker Build
class DockerImage {
  /// [Required] Image name of a custom base image.
  /// <seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" />
  final String dockerImageUri;
  /// Enum to determine docker specification type. Must be either Build or Image.
  /// Expected value is 'Image'.
  final String dockerSpecificationType;
  /// The platform information of the docker image.
  final DockerImagePlatform? platform;

  /// Creates a new [DockerImage].
  /// [dockerImageUri] [Required] Image name of a custom base image.
  /// [dockerSpecificationType] Enum to determine docker specification type. Must be either Build or Image.
  /// [platform] The platform information of the docker image.
  DockerImage({
    required this.dockerImageUri,
    required this.dockerSpecificationType,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImageUri': dockerImageUri,
      'dockerSpecificationType': dockerSpecificationType,
      'platform': ?platform == null ? null : platform!.toMap(),
    };
  }

  factory DockerImage.fromMap(Map<String, dynamic> map) {
    return DockerImage(
      dockerImageUri: map['dockerImageUri'] as String,
      dockerSpecificationType: map['dockerSpecificationType'] as String,
      platform: map['platform'] == null ? null : DockerImagePlatform.fromMap((map['platform'] as Map).cast<String, dynamic>()),
    );
  }
}

