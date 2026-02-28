// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerDeveloperConnectEventConfigPullRequest {
  /// Regex of branches to match.
  final String branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment '/gcbrun'. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  final String commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final bool invertRegex;

  /// Creates a new [GetTriggerDeveloperConnectEventConfigPullRequest].
  /// [branch] Regex of branches to match.
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment '/gcbrun'. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  GetTriggerDeveloperConnectEventConfigPullRequest({
    required this.branch,
    required this.commentControl,
    required this.invertRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branch'] = branch;
    map['commentControl'] = commentControl;
    map['invertRegex'] = invertRegex;
    return map;
  }

  factory GetTriggerDeveloperConnectEventConfigPullRequest.fromMap(
      Map<String, dynamic> map) {
    return GetTriggerDeveloperConnectEventConfigPullRequest(
      branch: map['branch'] as String,
      commentControl: map['commentControl'] as String,
      invertRegex: map['invertRegex'] as bool,
    );
  }
}
