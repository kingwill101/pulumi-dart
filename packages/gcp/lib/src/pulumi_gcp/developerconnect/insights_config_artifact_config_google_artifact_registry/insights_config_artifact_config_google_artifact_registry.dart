// ignore_for_file: unused_element, unnecessary_cast

class InsightsConfigArtifactConfigGoogleArtifactRegistry {
  /// The name of the artifact registry package.
  final String artifactRegistryPackage;

  /// The host project of Artifact Registry.
  final String projectId;

  InsightsConfigArtifactConfigGoogleArtifactRegistry({
    required this.artifactRegistryPackage,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactRegistryPackage'] = artifactRegistryPackage;
    map['projectId'] = projectId;
    return map;
  }

  factory InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap(
      Map<String, dynamic> map) {
    return InsightsConfigArtifactConfigGoogleArtifactRegistry(
      artifactRegistryPackage: map['artifactRegistryPackage'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
