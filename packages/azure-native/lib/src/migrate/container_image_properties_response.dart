// ignore_for_file: unused_element, unnecessary_cast

import 'acrproperties_response.dart';

/// Class for container image properties.
class ContainerImagePropertiesResponse {
  /// Gets or sets the dockerfile for the container image.
  final String? dockerfile;
  /// Gets the ID.
  final String id;
  /// Gets or sets the container image name.
  final String? imageName;
  /// Gets or sets the container image tag.
  final String? imageTag;
  /// Class for ACR Properties.
  final ACRPropertiesResponse? registryProperties;
  /// Gets or sets the RunId.
  final String? runId;
  /// Gets or sets the RunStatus.
  final String? runStatus;

  /// Creates a new [ContainerImagePropertiesResponse].
  /// [dockerfile] Gets or sets the dockerfile for the container image.
  /// [id] Gets the ID.
  /// [imageName] Gets or sets the container image name.
  /// [imageTag] Gets or sets the container image tag.
  /// [registryProperties] Class for ACR Properties.
  /// [runId] Gets or sets the RunId.
  /// [runStatus] Gets or sets the RunStatus.
  ContainerImagePropertiesResponse({
    this.dockerfile,
    required this.id,
    this.imageName,
    this.imageTag,
    this.registryProperties,
    this.runId,
    this.runStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerfile': ?dockerfile,
      'id': id,
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'registryProperties': ?registryProperties == null ? null : registryProperties!.toMap(),
      'runId': ?runId,
      'runStatus': ?runStatus,
    };
  }

  factory ContainerImagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerImagePropertiesResponse(
      dockerfile: map['dockerfile'] == null ? null : map['dockerfile'] as String,
      id: map['id'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      registryProperties: map['registryProperties'] == null ? null : ACRPropertiesResponse.fromMap((map['registryProperties'] as Map).cast<String, dynamic>()),
      runId: map['runId'] == null ? null : map['runId'] as String,
      runStatus: map['runStatus'] == null ? null : map['runStatus'] as String,
    );
  }
}

