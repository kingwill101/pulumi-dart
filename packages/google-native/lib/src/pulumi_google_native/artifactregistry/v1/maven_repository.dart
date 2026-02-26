// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_public_repository.dart';

/// Configuration for a Maven remote repository.
class MavenRepository {
  /// One of the publicly available Maven repositories supported by Artifact Registry.
  final MavenRepositoryPublicRepository? publicRepository;

  MavenRepository({
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

  factory MavenRepository.fromMap(Map<String, dynamic> map) {
    return MavenRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : MavenRepositoryPublicRepository.fromValue(
              map['publicRepository'] as String),
    );
  }
}
