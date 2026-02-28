// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_artifactregistry_v1_remote_repository_config_yum_repository_public_repository_response.dart';

/// Configuration for a Yum remote repository.
class YumRepositoryResponse {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  final GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse
      publicRepository;

  /// Creates a new [YumRepositoryResponse].
  /// [publicRepository] One of the publicly available Yum repositories supported by Artifact Registry.
  YumRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepository'] = publicRepository.toMap();
    return map;
  }

  factory YumRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return YumRepositoryResponse(
      publicRepository:
          GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse
              .fromMap(
                  (map['publicRepository'] as Map).cast<String, dynamic>()),
    );
  }
}
