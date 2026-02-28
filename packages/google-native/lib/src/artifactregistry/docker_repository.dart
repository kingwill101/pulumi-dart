// ignore_for_file: unused_element, unnecessary_cast

import 'docker_repository_public_repository.dart';

/// Configuration for a Docker remote repository.
class DockerRepository {
  /// One of the publicly available Docker repositories supported by Artifact Registry.
  final DockerRepositoryPublicRepository? publicRepository;

  /// Creates a new [DockerRepository].
  /// [publicRepository] One of the publicly available Docker repositories supported by Artifact Registry.
  DockerRepository({
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicRepositoryValue = publicRepository;
    if (publicRepositoryValue != null) {
      map['publicRepository'] = publicRepositoryValue.value;
    }
    return map;
  }

  factory DockerRepository.fromMap(Map<String, dynamic> map) {
    return DockerRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : DockerRepositoryPublicRepository.fromValue(
              map['publicRepository'] as String),
    );
  }
}
