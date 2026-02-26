// ignore_for_file: unused_element, unnecessary_cast

/// RepoSource describes the location of the source in a Google Cloud Source Repository.
class RepoSourceResponse5 {
  /// Name of the branch to build.
  final String branchName;

  /// Explicit commit SHA to build.
  final String commitSha;

  /// ID of the project that owns the repo.
  final String project;

  /// Name of the repo.
  final String repoName;

  /// Name of the tag to build.
  final String tagName;

  RepoSourceResponse5({
    required this.branchName,
    required this.commitSha,
    required this.project,
    required this.repoName,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchName'] = branchName;
    map['commitSha'] = commitSha;
    map['project'] = project;
    map['repoName'] = repoName;
    map['tagName'] = tagName;
    return map;
  }

  factory RepoSourceResponse5.fromMap(Map<String, dynamic> map) {
    return RepoSourceResponse5(
      branchName: map['branchName'] as String,
      commitSha: map['commitSha'] as String,
      project: map['project'] as String,
      repoName: map['repoName'] as String,
      tagName: map['tagName'] as String,
    );
  }
}
