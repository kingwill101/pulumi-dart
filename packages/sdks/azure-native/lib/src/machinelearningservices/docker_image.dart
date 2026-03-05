// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_image_platform.dart';

/// Class to represent configuration settings for Docker Build
class DockerImage {
  /// [Required] Image name of a custom base image.
  /// &lt;seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" /&gt;
  final pulumi.Input<String> dockerImageUri;
  /// Enum to determine docker specification type. Must be either Build or Image.
  /// Expected value is 'Image'.
  final pulumi.Input<String> dockerSpecificationType;
  /// The platform information of the docker image.
  final pulumi.Input<DockerImagePlatform>? platform;

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
      'platform': ?pulumi.Input.mapOptionalInputValue<DockerImagePlatform, Map<String, dynamic>>(platform, (value) => value.toMap()),
    };
  }

  factory DockerImage.fromMap(Map<String, dynamic> map) {
    return DockerImage(
      dockerImageUri: pulumi.Input.fromValue(map['dockerImageUri'] as String),
      dockerSpecificationType: pulumi.Input.fromValue(map['dockerSpecificationType'] as String),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerImagePlatform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

