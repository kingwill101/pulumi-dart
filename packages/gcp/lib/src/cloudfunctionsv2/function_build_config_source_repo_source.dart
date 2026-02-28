// ignore_for_file: unused_element, unnecessary_cast

class FunctionBuildConfigSourceRepoSource {
  /// Regex matching branches to build.
  final String? branchName;

  /// Regex matching tags to build.
  final String? commitSha;

  /// Directory, relative to the source root, in which to run the build.
  final String? dir;

  /// Only trigger a build if the revision regex does
  /// NOT match the revision regex.
  final bool? invertRegex;

  /// ID of the project that owns the Cloud Source Repository. If omitted, the
  /// project ID requesting the build is assumed.
  final String? projectId;

  /// Name of the Cloud Source Repository.
  final String? repoName;

  /// Regex matching tags to build.
  final String? tagName;

  /// Creates a new [FunctionBuildConfigSourceRepoSource].
  /// [branchName] Regex matching branches to build.
  /// [commitSha] Regex matching tags to build.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does
  /// [projectId] ID of the project that owns the Cloud Source Repository. If omitted, the
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build.
  FunctionBuildConfigSourceRepoSource({
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

  factory FunctionBuildConfigSourceRepoSource.fromMap(
      Map<String, dynamic> map) {
    return FunctionBuildConfigSourceRepoSource(
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
