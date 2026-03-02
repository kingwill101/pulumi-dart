// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acrproperties_response.dart';

/// Class for container image properties.
class ContainerImagePropertiesResponse {
  /// Gets or sets the dockerfile for the container image.
  final pulumi.Input<String>? dockerfile;
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets the container image name.
  final pulumi.Input<String>? imageName;
  /// Gets or sets the container image tag.
  final pulumi.Input<String>? imageTag;
  /// Class for ACR Properties.
  final pulumi.Input<ACRPropertiesResponse>? registryProperties;
  /// Gets or sets the RunId.
  final pulumi.Input<String>? runId;
  /// Gets or sets the RunStatus.
  final pulumi.Input<String>? runStatus;

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
      'registryProperties': ?pulumi.Input.mapOptionalInputValue<ACRPropertiesResponse, Map<String, dynamic>>(registryProperties, (value) => value.toMap()),
      'runId': ?runId,
      'runStatus': ?runStatus,
    };
  }

  factory ContainerImagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerImagePropertiesResponse(
      dockerfile: map['dockerfile'] == null ? null : (map['dockerfile'] as String).input(),
      id: (map['id'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      imageTag: map['imageTag'] == null ? null : (map['imageTag'] as String).input(),
      registryProperties: map['registryProperties'] == null ? null : (ACRPropertiesResponse.fromMap((map['registryProperties'] as Map).cast<String, dynamic>())).input(),
      runId: map['runId'] == null ? null : (map['runId'] as String).input(),
      runStatus: map['runStatus'] == null ? null : (map['runStatus'] as String).input(),
    );
  }
}

