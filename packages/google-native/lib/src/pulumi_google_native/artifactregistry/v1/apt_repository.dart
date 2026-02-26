// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_artifactregistry_v1_remote_repository_config_apt_repository_public_repository.dart';

/// Configuration for an Apt remote repository.
class AptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  final GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository?
      publicRepository;

  AptRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicRepositoryValue = publicRepository;
    if (publicRepositoryValue != null) {
      map['publicRepository'] = publicRepositoryValue.toMap();
    }
    return map;
  }

  factory AptRepository.fromMap(Map<String, dynamic> map) {
    return AptRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository
              .fromMap(
                  (map['publicRepository'] as Map).cast<String, dynamic>()),
    );
  }
}
