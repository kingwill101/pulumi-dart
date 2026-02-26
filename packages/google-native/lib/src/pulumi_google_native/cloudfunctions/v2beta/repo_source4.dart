// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in a Google Cloud Source Repository.
class RepoSource4 {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String? branchName;

  /// Explicit commit SHA to build.
  final String? commitSha;

  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  final String? dir;

  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final String? project;

  /// Name of the Cloud Source Repository.
  final String? repoName;

  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String? tagName;

  RepoSource4({
    this.branchName,
    this.commitSha,
    this.dir,
    this.project,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchNameValue = branchName;
    if (branchNameValue != null) {
      map['branchName'] = branchNameValue;
    }
    final commitShaValue = commitSha;
    if (commitShaValue != null) {
      map['commitSha'] = commitShaValue;
    }
    final dirValue = dir;
    if (dirValue != null) {
      map['dir'] = dirValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final repoNameValue = repoName;
    if (repoNameValue != null) {
      map['repoName'] = repoNameValue;
    }
    final tagNameValue = tagName;
    if (tagNameValue != null) {
      map['tagName'] = tagNameValue;
    }
    return map;
  }

  factory RepoSource4.fromMap(Map<String, dynamic> map) {
    return RepoSource4(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dir: map['dir'] == null ? null : map['dir'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
