// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_npm_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigNpmRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository? customRepository;
  /// Address of the remote repository.
  /// Possible values are: `NPMJS`.
  final String? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigNpmRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  RepositoryRemoteRepositoryConfigNpmRepository({
    this.customRepository,
    this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepository': ?customRepository == null ? null : customRepository!.toMap(),
      'publicRepository': ?publicRepository,
    };
  }

  factory RepositoryRemoteRepositoryConfigNpmRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigNpmRepository(
      customRepository: map['customRepository'] == null ? null : RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap((map['customRepository'] as Map).cast<String, dynamic>()),
      publicRepository: map['publicRepository'] == null ? null : map['publicRepository'] as String,
    );
  }
}

