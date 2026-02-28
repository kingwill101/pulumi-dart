// ignore_for_file: unused_element, unnecessary_cast

/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse {
  /// The ID of the project.
  final String project;

  /// The name of the repo. Leave empty for the default repo.
  final String repoName;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse({
    required this.project,
    required this.repoName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['repoName'] = repoName;
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoIdResponse(
      project: map['project'] as String,
      repoName: map['repoName'] as String,
    );
  }
}
