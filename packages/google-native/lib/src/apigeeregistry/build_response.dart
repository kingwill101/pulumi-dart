// ignore_for_file: unused_element, unnecessary_cast

/// Build information of the Instance if it's in `ACTIVE` state.
class BuildResponse {
  /// Commit ID of the latest commit in the build.
  final String commitId;

  /// Commit time of the latest commit in the build.
  final String commitTime;

  /// Path of the open source repository: github.com/apigee/registry.
  final String repo;

  /// Creates a new [BuildResponse].
  /// [commitId] Commit ID of the latest commit in the build.
  /// [commitTime] Commit time of the latest commit in the build.
  /// [repo] Path of the open source repository: github.com/apigee/registry.
  BuildResponse({
    required this.commitId,
    required this.commitTime,
    required this.repo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitId'] = commitId;
    map['commitTime'] = commitTime;
    map['repo'] = repo;
    return map;
  }

  factory BuildResponse.fromMap(Map<String, dynamic> map) {
    return BuildResponse(
      commitId: map['commitId'] as String,
      commitTime: map['commitTime'] as String,
      repo: map['repo'] as String,
    );
  }
}
