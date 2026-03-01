// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter_comment_control.dart';

/// PullRequestFilter contains filter properties for matching GitHub Pull Requests.
class PullRequestFilter {
  /// Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String? branch;

  /// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  final PullRequestFilterCommentControl? commentControl;

  /// If true, branches that do NOT match the git_ref will trigger a build.
  final bool? invertRegex;

  /// Creates a new [PullRequestFilter].
  /// [branch] Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commentControl] Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
  /// [invertRegex] If true, branches that do NOT match the git_ref will trigger a build.
  PullRequestFilter({this.branch, this.commentControl, this.invertRegex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commentControl': ?commentControl == null ? null : commentControl!.value,
      'invertRegex': ?invertRegex,
    };
  }

  factory PullRequestFilter.fromMap(Map<String, dynamic> map) {
    return PullRequestFilter(
      branch: map['branch'] == null ? null : map['branch'] as String,
      commentControl: map['commentControl'] == null
          ? null
          : PullRequestFilterCommentControl.fromValue(
              map['commentControl'] as String,
            ),
      invertRegex: map['invertRegex'] == null
          ? null
          : map['invertRegex'] as bool,
    );
  }
}
