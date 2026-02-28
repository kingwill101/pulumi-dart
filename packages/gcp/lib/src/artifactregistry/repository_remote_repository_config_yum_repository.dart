// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_yum_repository_public_repository.dart';

class RepositoryRemoteRepositoryConfigYumRepository {
  /// One of the publicly available Yum repositories supported by Artifact Registry.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigYumRepositoryPublicRepository?
      publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigYumRepository].
  /// [publicRepository] One of the publicly available Yum repositories supported by Artifact Registry.
  RepositoryRemoteRepositoryConfigYumRepository({
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

  factory RepositoryRemoteRepositoryConfigYumRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigYumRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigYumRepositoryPublicRepository
              .fromMap(
                  (map['publicRepository'] as Map).cast<String, dynamic>()),
    );
  }
}
