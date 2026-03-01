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

  /// Creates a new [TriggerTriggerTemplate].
  /// [branchName] Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// [commitSha] Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does NOT match the revision regex.
  /// [projectId] ID of the project that owns the Cloud Source Repository. If
  /// [repoName] Name of the Cloud Source Repository. If omitted, the name "default" is assumed.
  /// [tagName] Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
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
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'dir': ?dir,
      'invertRegex': ?invertRegex,
      'projectId': ?projectId,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory TriggerTriggerTemplate.fromMap(Map<String, dynamic> map) {
    return TriggerTriggerTemplate(
      branchName: map['branchName'] == null
          ? null
          : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dir: map['dir'] == null ? null : map['dir'] as String,
      invertRegex: map['invertRegex'] == null
          ? null
          : map['invertRegex'] as bool,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}
