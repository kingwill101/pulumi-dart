// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerTriggerTemplate {
  /// Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final String branchName;

  /// Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  final String commitSha;

  /// Directory, relative to the source root, in which to run the build.
  ///
  /// This must be a relative path. If a step's dir is specified and
  /// is an absolute path, this value is ignored for that step's
  /// execution.
  final String dir;

  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final bool invertRegex;

  /// ID of the project that owns the Cloud Source Repository. If
  /// omitted, the project ID requesting the build is assumed.
  final String projectId;

  /// Name of the Cloud Source Repository. If omitted, the name "default" is assumed.
  final String repoName;

  /// Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final String tagName;

  GetTriggerTriggerTemplate({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.invertRegex,
    required this.projectId,
    required this.repoName,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchName'] = branchName;
    map['commitSha'] = commitSha;
    map['dir'] = dir;
    map['invertRegex'] = invertRegex;
    map['projectId'] = projectId;
    map['repoName'] = repoName;
    map['tagName'] = tagName;
    return map;
  }

  factory GetTriggerTriggerTemplate.fromMap(Map<String, dynamic> map) {
    return GetTriggerTriggerTemplate(
      branchName: map['branchName'] as String,
      commitSha: map['commitSha'] as String,
      dir: map['dir'] as String,
      invertRegex: map['invertRegex'] as bool,
      projectId: map['projectId'] as String,
      repoName: map['repoName'] as String,
      tagName: map['tagName'] as String,
    );
  }
}
