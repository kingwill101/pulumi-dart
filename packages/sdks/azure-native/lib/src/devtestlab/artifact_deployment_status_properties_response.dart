// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an artifact deployment.
class ArtifactDeploymentStatusPropertiesResponse {
  /// The total count of the artifacts that were successfully applied.
  final int? artifactsApplied;
  /// The deployment status of the artifact.
  final String? deploymentStatus;
  /// The total count of the artifacts that were tentatively applied.
  final int? totalArtifacts;

  /// Creates a new [ArtifactDeploymentStatusPropertiesResponse].
  /// [artifactsApplied] The total count of the artifacts that were successfully applied.
  /// [deploymentStatus] The deployment status of the artifact.
  /// [totalArtifacts] The total count of the artifacts that were tentatively applied.
  ArtifactDeploymentStatusPropertiesResponse({
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
      artifactsApplied: map['artifactsApplied'] == null ? null : map['artifactsApplied'] as int,
      deploymentStatus: map['deploymentStatus'] == null ? null : map['deploymentStatus'] as String,
      totalArtifacts: map['totalArtifacts'] == null ? null : map['totalArtifacts'] as int,
    );
  }
}

