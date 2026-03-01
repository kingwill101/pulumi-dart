// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in a 2nd-gen Google Cloud Build repository resource.
class ConnectedRepositoryResponse {
  /// Directory, relative to the source root, in which to run the build.
  final String dir;

  /// Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connections/*/repositories/*`.
  final String repository;

  /// The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  final String revision;

  /// Creates a new [ConnectedRepositoryResponse].
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [repository] Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connections/*/repositories/*`.
  /// [revision] The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  ConnectedRepositoryResponse({
    required this.dir,
    required this.repository,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': dir,
      'repository': repository,
      'revision': revision,
    };
  }

  factory ConnectedRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedRepositoryResponse(
      dir: map['dir'] as String,
      repository: map['repository'] as String,
      revision: map['revision'] as String,
    );
  }
}
