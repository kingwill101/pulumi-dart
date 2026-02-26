// ignore_for_file: unused_element, unnecessary_cast

class TriggerDeveloperConnectEventConfigPullRequest {
  /// Regex of branches to match.
  final String? branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// Possible values are: `COMMENTS_DISABLED`, `COMMENTS_ENABLED`, `COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY`.
  final String? commentControl;

  /// If true, branches that do NOT match the<span pulumi-lang-nodejs=" gitRef " pulumi-lang-dotnet=" GitRef " pulumi-lang-go=" gitRef " pulumi-lang-python=" git_ref " pulumi-lang-yaml=" gitRef " pulumi-lang-java=" gitRef "> git_ref </span>will trigger a build.
  final bool? invertRegex;

  TriggerDeveloperConnectEventConfigPullRequest({
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

  factory TriggerDeveloperConnectEventConfigPullRequest.fromMap(
      Map<String, dynamic> map) {
    return TriggerDeveloperConnectEventConfigPullRequest(
      branch: map['branch'] == null ? null : map['branch'] as String,
      commentControl: map['commentControl'] == null
          ? null
          : map['commentControl'] as String,
      invertRegex:
          map['invertRegex'] == null ? null : map['invertRegex'] as bool,
    );
  }
}
