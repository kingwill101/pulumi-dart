// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigCommonRepository {
  /// One of:
  /// a. Artifact Registry Repository resource, e.g. 'projects/UPSTREAM_PROJECT_ID/locations/REGION/repositories/UPSTREAM_REPOSITORY'
  /// b. URI to the registry, e.g. '"https://registry-1.docker.io"'
  /// c. URI to Artifact Registry Repository, e.g. '"https://REGION-docker.pkg.dev/UPSTREAM_PROJECT_ID/UPSTREAM_REPOSITORY"'
  final String uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigCommonRepository].
  /// [uri] One of:
  GetRepositoryRemoteRepositoryConfigCommonRepository({required this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GetRepositoryRemoteRepositoryConfigCommonRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigCommonRepository(
      uri: map['uri'] as String,
    );
  }
}
