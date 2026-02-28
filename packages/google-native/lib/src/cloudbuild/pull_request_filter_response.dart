// ignore_for_file: unused_element, unnecessary_cast

/// PullRequestFilter contains filter properties for matching GitHub Pull Requests.
class PullRequestFilterResponse {
  /// Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  final String commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final bool invertRegex;

  /// Creates a new [PullRequestFilterResponse].
  /// [branch] Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  PullRequestFilterResponse({
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

  factory PullRequestFilterResponse.fromMap(Map<String, dynamic> map) {
    return PullRequestFilterResponse(
      branch: map['branch'] as String,
      commentControl: map['commentControl'] as String,
      invertRegex: map['invertRegex'] as bool,
    );
  }
}
