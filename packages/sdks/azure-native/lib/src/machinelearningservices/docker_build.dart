// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_image_platform.dart';

/// Class to represent configuration settings for Docker Build
class DockerBuild {
  /// Path to a snapshot of the Docker Context. This property is only valid if Dockerfile is specified.
  /// The path is relative to the asset path which must contain a single Blob URI value.
  /// &lt;seealso href="https://docs.docker.com/engine/context/working-with-contexts/" /&gt;
  final pulumi.Input<String?>? context;
  /// Enum to determine docker specification type. Must be either Build or Image.
  /// Expected value is 'Build'.
  final pulumi.Input<String> dockerSpecificationType;
  /// [Required] Docker command line instructions to assemble an image.
  /// &lt;seealso href="https://repo2docker.readthedocs.io/en/latest/config_files.html#dockerfile-advanced-environments" /&gt;
  final pulumi.Input<String> dockerfile;
  /// The platform information of the docker image.
  final pulumi.Input<DockerImagePlatform?>? platform;

  /// Creates a new [DockerBuild].
  /// [context] Path to a snapshot of the Docker Context. This property is only valid if Dockerfile is specified.
  /// [dockerSpecificationType] Enum to determine docker specification type. Must be either Build or Image.
  /// [dockerfile] [Required] Docker command line instructions to assemble an image.
  /// [platform] The platform information of the docker image.
  const DockerBuild({
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
      'platform': ?pulumi.Input.mapOptionalInputValue<DockerImagePlatform, Map<String, dynamic>>(platform, (value) => value.toMap()),
    };
  }

  factory DockerBuild.fromMap(Map<String, dynamic> map) {
    return DockerBuild(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerSpecificationType: pulumi.Input.fromValue(map['dockerSpecificationType'] as String),
      dockerfile: pulumi.Input.fromValue(map['dockerfile'] as String),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerImagePlatform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
