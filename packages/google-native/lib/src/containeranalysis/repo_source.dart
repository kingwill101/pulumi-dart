// ignore_for_file: unused_element, unnecessary_cast

/// RepoSource describes the location of the source in a Google Cloud Source Repository.
class RepoSource {
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

  /// Creates a new [RepoSource].
  /// [branchName] Name of the branch to build.
  /// [commitSha] Explicit commit SHA to build.
  /// [project] ID of the project that owns the repo.
  /// [repoName] Name of the repo.
  /// [tagName] Name of the tag to build.
  RepoSource({
    this.branchName,
    this.commitSha,
    this.project,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'project': ?project,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory RepoSource.fromMap(Map<String, dynamic> map) {
    return RepoSource(
      branchName: map['branchName'] == null
          ? null
          : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
