// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acrproperties.dart';

/// Class for container image properties.
class ContainerImageProperties {
  /// Gets or sets the dockerfile for the container image.
  final pulumi.Input<String>? dockerfile;
  /// Gets or sets the container image name.
  final pulumi.Input<String>? imageName;
  /// Gets or sets the container image tag.
  final pulumi.Input<String>? imageTag;
  /// Class for ACR Properties.
  final pulumi.Input<ACRProperties>? registryProperties;
  /// Gets or sets the RunId.
  final pulumi.Input<String>? runId;
  /// Gets or sets the RunStatus.
  final pulumi.Input<String>? runStatus;

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
      'registryProperties': ?pulumi.Input.mapOptionalInputValue<ACRProperties, Map<String, dynamic>>(registryProperties, (value) => value.toMap()),
      'runId': ?runId,
      'runStatus': ?runStatus,
    };
  }

  factory ContainerImageProperties.fromMap(Map<String, dynamic> map) {
    return ContainerImageProperties(
      dockerfile: (() { final guardedValue = map['dockerfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageTag: (() { final guardedValue = map['imageTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryProperties: (() { final guardedValue = map['registryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ACRProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runId: (() { final guardedValue = map['runId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runStatus: (() { final guardedValue = map['runStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

