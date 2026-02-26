// ignore_for_file: unused_element, unnecessary_cast

class TriggerTriggerTemplate {
  /// Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final String? branchName;

  /// Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  final String? commitSha;

  /// Directory, relative to the source root, in which to run the build.
  /// This must be a relative path. If a step's dir is specified and
  /// is an absolute path, this value is ignored for that step's
  /// execution.
  final String? dir;

  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final bool? invertRegex;

  /// ID of the project that owns the Cloud Source Repository. If
  /// omitted, the project ID requesting the build is assumed.
  final String? projectId;

  /// Name of the Cloud Source Repository. If omitted, the name "default" is assumed.
  final String? repoName;

  /// Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final String? tagName;

  TriggerTriggerTemplate({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
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
    final invertRegexValue = invertRegex;
    if (invertRegexValue != null) {
      map['invertRegex'] = invertRegexValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
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

  factory TriggerTriggerTemplate.fromMap(Map<String, dynamic> map) {
    return TriggerTriggerTemplate(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dir: map['dir'] == null ? null : map['dir'] as String,
      invertRegex:
          map['invertRegex'] == null ? null : map['invertRegex'] as bool,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
