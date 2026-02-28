// ignore_for_file: unused_element, unnecessary_cast

class InsightsConfigArtifactConfigGoogleArtifactAnalysis {
  /// The project id of the project where the provenance is stored.
  final String projectId;

  /// Creates a new [InsightsConfigArtifactConfigGoogleArtifactAnalysis].
  /// [projectId] The project id of the project where the provenance is stored.
  InsightsConfigArtifactConfigGoogleArtifactAnalysis({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectId'] = projectId;
    return map;
  }

  factory InsightsConfigArtifactConfigGoogleArtifactAnalysis.fromMap(
      Map<String, dynamic> map) {
    return InsightsConfigArtifactConfigGoogleArtifactAnalysis(
      projectId: map['projectId'] as String,
    );
  }
}
