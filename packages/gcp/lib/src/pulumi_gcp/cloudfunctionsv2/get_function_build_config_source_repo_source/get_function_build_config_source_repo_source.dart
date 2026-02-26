// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionBuildConfigSourceRepoSource {
  /// Regex matching branches to build.
  final String branchName;

  /// Regex matching tags to build.
  final String commitSha;

  /// Directory, relative to the source root, in which to run the build.
  final String dir;

  /// Only trigger a build if the revision regex does
  /// NOT match the revision regex.
  final bool invertRegex;

  /// ID of the project that owns the Cloud Source Repository. If omitted, the
  /// project ID requesting the build is assumed.
  final String projectId;

  /// Name of the Cloud Source Repository.
  final String repoName;

  /// Regex matching tags to build.
  final String tagName;

  GetFunctionBuildConfigSourceRepoSource({
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

  factory GetFunctionBuildConfigSourceRepoSource.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionBuildConfigSourceRepoSource(
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
