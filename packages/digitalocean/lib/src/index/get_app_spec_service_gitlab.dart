// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecServiceGitlab {
  /// The name of the branch to use.
  final String? branch;
  /// Whether to automatically deploy new commits made to the repo.
  final bool? deployOnPush;
  /// The name of the repo in the format `owner/repo`.
  final String? repo;

  /// Creates a new [GetAppSpecServiceGitlab].
  /// [branch] The name of the branch to use.
  /// [deployOnPush] Whether to automatically deploy new commits made to the repo.
  /// [repo] The name of the repo in the format `owner/repo`.
  GetAppSpecServiceGitlab({
    this.branch,
    this.deployOnPush,
    this.repo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'deployOnPush': ?deployOnPush,
      'repo': ?repo,
    };
  }

  factory GetAppSpecServiceGitlab.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceGitlab(
      branch: map['branch'] == null ? null : map['branch'] as String,
      deployOnPush: map['deployOnPush'] == null ? null : map['deployOnPush'] as bool,
      repo: map['repo'] == null ? null : map['repo'] as String,
    );
  }
}

