// ignore_for_file: unused_element, unnecessary_cast


class InsightsConfigArtifactConfigGoogleArtifactRegistry {
  /// The name of the artifact registry package.
  final String artifactRegistryPackage;
  /// The host project of Artifact Registry.
  final String projectId;

  /// Creates a new [InsightsConfigArtifactConfigGoogleArtifactRegistry].
  /// [artifactRegistryPackage] The name of the artifact registry package.
  /// [projectId] The host project of Artifact Registry.
  InsightsConfigArtifactConfigGoogleArtifactRegistry({
    required this.artifactRegistryPackage,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactRegistryPackage': artifactRegistryPackage,
      'projectId': projectId,
    };
  }

  factory InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfigGoogleArtifactRegistry(
      artifactRegistryPackage: map['artifactRegistryPackage'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

