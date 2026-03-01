// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_artifactregistry_v1_remote_repository_config_yum_repository_public_repository.dart';

/// Configuration for a Yum remote repository.
class YumRepository {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  final GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository?
  publicRepository;

  /// Creates a new [YumRepository].
  /// [publicRepository] One of the publicly available Yum repositories supported by Artifact Registry.
  YumRepository({this.publicRepository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?publicRepository == null
          ? null
          : publicRepository!.toMap(),
    };
  }

  factory YumRepository.fromMap(Map<String, dynamic> map) {
    return YumRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepository.fromMap(
              (map['publicRepository'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
