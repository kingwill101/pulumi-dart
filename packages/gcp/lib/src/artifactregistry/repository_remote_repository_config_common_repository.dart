// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigCommonRepository {
  /// One of:
  /// a. Artifact Registry Repository resource, e.g. `projects/UPSTREAM_PROJECT_ID/locations/REGION/repositories/UPSTREAM_REPOSITORY`
  /// b. URI to the registry, e.g. `"https://registry-1.docker.io"`
  /// c. URI to Artifact Registry Repository, e.g. `"https://REGION-docker.pkg.dev/UPSTREAM_PROJECT_ID/UPSTREAM_REPOSITORY"`
  final String uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigCommonRepository].
  /// [uri] One of:
  RepositoryRemoteRepositoryConfigCommonRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory RepositoryRemoteRepositoryConfigCommonRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigCommonRepository(
      uri: map['uri'] as String,
    );
  }
}
