// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in any accessible Git repository.
class GitSourceResponse {
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  final String dir;

  /// The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch.
  final String revision;

  /// Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote.
  final String url;

  /// Creates a new [GitSourceResponse].
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  /// [revision] The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch.
  /// [url] Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote.
  GitSourceResponse({
    required this.dir,
    required this.revision,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dir'] = dir;
    map['revision'] = revision;
    map['url'] = url;
    return map;
  }

  factory GitSourceResponse.fromMap(Map<String, dynamic> map) {
    return GitSourceResponse(
      dir: map['dir'] as String,
      revision: map['revision'] as String,
      url: map['url'] as String,
    );
  }
}
