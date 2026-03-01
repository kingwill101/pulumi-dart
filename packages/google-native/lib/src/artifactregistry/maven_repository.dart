// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_public_repository.dart';

/// Configuration for a Maven remote repository.
class MavenRepository {
  /// One of the publicly available Maven repositories supported by Artifact Registry.
  final MavenRepositoryPublicRepository? publicRepository;

  /// Creates a new [MavenRepository].
  /// [publicRepository] One of the publicly available Maven repositories supported by Artifact Registry.
  MavenRepository({this.publicRepository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicRepository': ?publicRepository == null
          ? null
          : publicRepository!.value,
    };
  }

  factory MavenRepository.fromMap(Map<String, dynamic> map) {
    return MavenRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : MavenRepositoryPublicRepository.fromValue(
              map['publicRepository'] as String,
            ),
    );
  }
}
