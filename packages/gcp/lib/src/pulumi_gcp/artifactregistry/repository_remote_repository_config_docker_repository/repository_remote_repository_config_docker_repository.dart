// ignore_for_file: unused_element, unnecessary_cast

import '../repository_remote_repository_config_docker_repository_custom_repository/repository_remote_repository_config_docker_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigDockerRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository?
      customRepository;

  /// Address of the remote repository.
  /// Possible values are: `DOCKER_HUB`.
  final String? publicRepository;

  RepositoryRemoteRepositoryConfigDockerRepository({
    this.customRepository,
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRepositoryValue = customRepository;
    if (customRepositoryValue != null) {
      map['customRepository'] = customRepositoryValue.toMap();
    }
    final publicRepositoryValue = publicRepository;
    if (publicRepositoryValue != null) {
      map['publicRepository'] = publicRepositoryValue;
    }
    return map;
  }

  factory RepositoryRemoteRepositoryConfigDockerRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigDockerRepository(
      customRepository: map['customRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository
              .fromMap(
                  (map['customRepository'] as Map).cast<String, dynamic>()),
      publicRepository: map['publicRepository'] == null
          ? null
          : map['publicRepository'] as String,
    );
  }
}
