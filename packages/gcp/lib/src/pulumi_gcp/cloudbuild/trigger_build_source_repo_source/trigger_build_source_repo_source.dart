// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildSourceRepoSource {
  /// Regex matching branches to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// The syntax of the regular expressions accepted is the syntax accepted by RE2 and
  /// described at https://github.com/google/re2/wiki/Syntax
  final String? branchName;

  /// Explicit commit SHA to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  final String? commitSha;

  /// Directory, relative to the source root, in which to run the build.
  /// This must be a relative path. If a step's dir is specified and is an absolute path,
  /// this value is ignored for that step's execution.
  final String? dir;

  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final bool? invertRegex;

  /// ID of the project that owns the Cloud Source Repository.
  /// If omitted, the project ID requesting the build is assumed.
  final String? projectId;

  /// Name of the Cloud Source Repository.
  final String repoName;

  /// Substitutions to use in a triggered build. Should only be used with triggers.run
  final Map<String, String>? substitutions;

  /// Regex matching tags to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// The syntax of the regular expressions accepted is the syntax accepted by RE2 and
  /// described at https://github.com/google/re2/wiki/Syntax
  final String? tagName;

  TriggerBuildSourceRepoSource({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
    required this.repoName,
    this.substitutions,
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
    map['repoName'] = repoName;
    final substitutionsValue = substitutions;
    if (substitutionsValue != null) {
      map['substitutions'] = substitutionsValue;
    }
    final tagNameValue = tagName;
    if (tagNameValue != null) {
      map['tagName'] = tagNameValue;
    }
    return map;
  }

  factory TriggerBuildSourceRepoSource.fromMap(Map<String, dynamic> map) {
    return TriggerBuildSourceRepoSource(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dir: map['dir'] == null ? null : map['dir'] as String,
      invertRegex:
          map['invertRegex'] == null ? null : map['invertRegex'] as bool,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      repoName: map['repoName'] as String,
      substitutions: map['substitutions'] == null
          ? null
          : (map['substitutions'] as Map).cast<String, String>(),
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
