// ignore_for_file: unused_element, unnecessary_cast

class TriggerGithubPullRequest {
  /// Regex of branches to match.
  final String branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final String? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final bool? invertRegex;

  /// Creates a new [TriggerGithubPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  TriggerGithubPullRequest({
    required this.branch,
    this.commentControl,
    this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'commentControl': ?commentControl,
      'invertRegex': ?invertRegex,
    };
  }

  factory TriggerGithubPullRequest.fromMap(Map<String, dynamic> map) {
    return TriggerGithubPullRequest(
      branch: map['branch'] as String,
      commentControl: map['commentControl'] == null
          ? null
          : map['commentControl'] as String,
      invertRegex: map['invertRegex'] == null
          ? null
          : map['invertRegex'] as bool,
    );
  }
}
