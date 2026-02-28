// ignore_for_file: unused_element, unnecessary_cast

class TriggerRepositoryEventConfigPullRequest {
  /// Regex of branches to match.
  final String? branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final String? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final bool? invertRegex;

  /// Creates a new [TriggerRepositoryEventConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  TriggerRepositoryEventConfigPullRequest({
    this.branch,
    this.commentControl,
    this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchValue = branch;
    if (branchValue != null) {
      map['branch'] = branchValue;
    }
    final commentControlValue = commentControl;
    if (commentControlValue != null) {
      map['commentControl'] = commentControlValue;
    }
    final invertRegexValue = invertRegex;
    if (invertRegexValue != null) {
      map['invertRegex'] = invertRegexValue;
    }
    return map;
  }

  factory TriggerRepositoryEventConfigPullRequest.fromMap(
      Map<String, dynamic> map) {
    return TriggerRepositoryEventConfigPullRequest(
      branch: map['branch'] == null ? null : map['branch'] as String,
      commentControl: map['commentControl'] == null
          ? null
          : map['commentControl'] as String,
      invertRegex:
          map['invertRegex'] == null ? null : map['invertRegex'] as bool,
    );
  }
}
