// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerGithubPullRequest {
  /// Regex of branches to match.
  final String branch;

  /// Whether to block builds on a "/gcbrun" comment from a repository owner or collaborator. Possible values: ["COMMENTS_DISABLED", "COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
  final String commentControl;

  /// If true, branches that do NOT match the<span pulumi-lang-nodejs=" gitRef " pulumi-lang-dotnet=" GitRef " pulumi-lang-go=" gitRef " pulumi-lang-python=" git_ref " pulumi-lang-yaml=" gitRef " pulumi-lang-java=" gitRef "> git_ref </span>will trigger a build.
  final bool invertRegex;

  GetTriggerGithubPullRequest({
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

  factory GetTriggerGithubPullRequest.fromMap(Map<String, dynamic> map) {
    return GetTriggerGithubPullRequest(
      branch: map['branch'] as String,
      commentControl: map['commentControl'] as String,
      invertRegex: map['invertRegex'] as bool,
    );
  }
}
