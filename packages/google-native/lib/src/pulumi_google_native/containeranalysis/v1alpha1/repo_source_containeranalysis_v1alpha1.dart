// ignore_for_file: unused_element, unnecessary_cast

/// RepoSource describes the location of the source in a Google Cloud Source Repository.
class RepoSourceContaineranalysisV1alpha1 {
  /// Name of the branch to build.
  final String? branchName;

  /// Explicit commit SHA to build.
  final String? commitSha;

  /// ID of the project that owns the repo.
  final String? project;

  /// Name of the repo.
  final String? repoName;

  /// Name of the tag to build.
  final String? tagName;

  RepoSourceContaineranalysisV1alpha1({
    this.branchName,
    this.commitSha,
    this.project,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchNameValue = branchName;
    if (branchNameValue != null) {
      map['branchName'] = branchNameValue;
    }
    final commitShaValue = commitSha;
    if (commitShaValue != null) {
      map['commitSha'] = commitShaValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final repoNameValue = repoName;
    if (repoNameValue != null) {
      map['repoName'] = repoNameValue;
    }
    final tagNameValue = tagName;
    if (tagNameValue != null) {
      map['tagName'] = tagNameValue;
    }
    return map;
  }

  factory RepoSourceContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RepoSourceContaineranalysisV1alpha1(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
