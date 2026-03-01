// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in a Google Cloud Source Repository.
class RepoSourceResponseCloudfunctionsV2beta {
  /// Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String branchName;

  /// Explicit commit SHA to build.
  final String commitSha;

  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  final String dir;

  /// ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  final String project;

  /// Name of the Cloud Source Repository.
  final String repoName;

  /// Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  final String tagName;

  /// Creates a new [RepoSourceResponseCloudfunctionsV2beta].
  /// [branchName] Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  /// [commitSha] Explicit commit SHA to build.
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution. eg. helloworld (no leading slash allowed)
  /// [project] ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  /// [repoName] Name of the Cloud Source Repository.
  /// [tagName] Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  RepoSourceResponseCloudfunctionsV2beta({
    required this.branchName,
    required this.commitSha,
    required this.dir,
    required this.project,
    required this.repoName,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': branchName,
      'commitSha': commitSha,
      'dir': dir,
      'project': project,
      'repoName': repoName,
      'tagName': tagName,
    };
  }

  factory RepoSourceResponseCloudfunctionsV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepoSourceResponseCloudfunctionsV2beta(
      branchName: map['branchName'] as String,
      commitSha: map['commitSha'] as String,
      dir: map['dir'] as String,
      project: map['project'] as String,
      repoName: map['repoName'] as String,
      tagName: map['tagName'] as String,
    );
  }
}
