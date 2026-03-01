// ignore_for_file: unused_element, unnecessary_cast

import 'acrproperties.dart';

/// Class for container image properties.
class ContainerImageProperties {
  /// Gets or sets the dockerfile for the container image.
  final String? dockerfile;
  /// Gets or sets the container image name.
  final String? imageName;
  /// Gets or sets the container image tag.
  final String? imageTag;
  /// Class for ACR Properties.
  final ACRProperties? registryProperties;
  /// Gets or sets the RunId.
  final String? runId;
  /// Gets or sets the RunStatus.
  final String? runStatus;

  /// Creates a new [ContainerImageProperties].
  /// [dockerfile] Gets or sets the dockerfile for the container image.
  /// [imageName] Gets or sets the container image name.
  /// [imageTag] Gets or sets the container image tag.
  /// [registryProperties] Class for ACR Properties.
  /// [runId] Gets or sets the RunId.
  /// [runStatus] Gets or sets the RunStatus.
  ContainerImageProperties({
    this.dockerfile,
    this.imageName,
    this.imageTag,
    this.registryProperties,
    this.runId,
    this.runStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerfile': ?dockerfile,
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'registryProperties': ?registryProperties == null ? null : registryProperties!.toMap(),
      'runId': ?runId,
      'runStatus': ?runStatus,
    };
  }

  factory ContainerImageProperties.fromMap(Map<String, dynamic> map) {
    return ContainerImageProperties(
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      registryProperties: map['registryProperties'] == null ? null : ACRProperties.fromMap((map['registryProperties'] as Map).cast<String, dynamic>()),
      runId: map['runId'] == null ? null : map['runId'] as String,
      runStatus: map['runStatus'] == null ? null : map['runStatus'] as String,
    );
  }
}

