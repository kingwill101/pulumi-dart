// ignore_for_file: unused_element, unnecessary_cast


/// Location of the source in a Google Cloud Source Repository.
class RepoSource {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String? branchName;
  /// Explicit commit SHA to build.
  final String? commitSha;
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  final String? dir;
  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final bool? invertRegex;
  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final String? project;
  /// Name of the Cloud Source Repository.
  final String? repoName;
  /// Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
  final Map<String, String>? substitutions;
  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String? tagName;

  /// Creates a new [RepoSource].
  /// [branchName] Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commitSha] Explicit commit SHA to build.
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  /// [invertRegex] Only trigger a build if the revision regex does NOT match the revision regex.
  /// [project] ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  /// [repoName] Name of the Cloud Source Repository.
  /// [substitutions] Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
  /// [tagName] Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  RepoSource({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.project,
    this.repoName,
    this.substitutions,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'dir': ?dir,
      'invertRegex': ?invertRegex,
      'project': ?project,
      'repoName': ?repoName,
      'substitutions': ?substitutions,
      'tagName': ?tagName,
    };
  }

  factory RepoSource.fromMap(Map<String, dynamic> map) {
    return RepoSource(
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dir: map['dir'] == null ? null : map['dir'] as String,
      invertRegex: map['invertRegex'] == null ? null : map['invertRegex'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      substitutions: map['substitutions'] == null ? null : (map['substitutions'] as Map).cast<String, String>(),
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
    );
  }
}

