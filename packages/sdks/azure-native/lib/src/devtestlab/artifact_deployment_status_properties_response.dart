// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an artifact deployment.
class ArtifactDeploymentStatusPropertiesResponse {
  /// The total count of the artifacts that were successfully applied.
  final pulumi.Input<int?>? artifactsApplied;
  /// The deployment status of the artifact.
  final pulumi.Input<String?>? deploymentStatus;
  /// The total count of the artifacts that were tentatively applied.
  final pulumi.Input<int?>? totalArtifacts;

  /// Creates a new [ArtifactDeploymentStatusPropertiesResponse].
  /// [artifactsApplied] The total count of the artifacts that were successfully applied.
  /// [deploymentStatus] The deployment status of the artifact.
  /// [totalArtifacts] The total count of the artifacts that were tentatively applied.
  const ArtifactDeploymentStatusPropertiesResponse({
    this.artifactsApplied,
    this.deploymentStatus,
    this.totalArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactsApplied': ?artifactsApplied,
      'deploymentStatus': ?deploymentStatus,
      'totalArtifacts': ?totalArtifacts,
    };
  }

  factory ArtifactDeploymentStatusPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactDeploymentStatusPropertiesResponse(
      artifactsApplied: (() { final guardedValue = map['artifactsApplied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalArtifacts: (() { final guardedValue = map['totalArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
