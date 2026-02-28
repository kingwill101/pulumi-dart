// ignore_for_file: unused_element, unnecessary_cast

/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class ProjectRepoIdContaineranalysisV1beta1 {
  /// The ID of the project.
  final String? project;

  /// The name of the repo. Leave empty for the default repo.
  final String? repoName;

  /// Creates a new [ProjectRepoIdContaineranalysisV1beta1].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  ProjectRepoIdContaineranalysisV1beta1({
    this.project,
    this.repoName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final repoNameValue = repoName;
    if (repoNameValue != null) {
      map['repoName'] = repoNameValue;
    }
    return map;
  }

  factory ProjectRepoIdContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ProjectRepoIdContaineranalysisV1beta1(
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
    );
  }
}
