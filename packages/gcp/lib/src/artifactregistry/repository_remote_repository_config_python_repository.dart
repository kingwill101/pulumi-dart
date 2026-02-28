// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_python_repository_custom_repository.dart';

class RepositoryRemoteRepositoryConfigPythonRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository?
      customRepository;

  /// Address of the remote repository.
  /// Possible values are: `PYPI`.
  final String? publicRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfigPythonRepository].
  /// [customRepository] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository.
  RepositoryRemoteRepositoryConfigPythonRepository({
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

  factory RepositoryRemoteRepositoryConfigPythonRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigPythonRepository(
      customRepository: map['customRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository
              .fromMap(
                  (map['customRepository'] as Map).cast<String, dynamic>()),
      publicRepository: map['publicRepository'] == null
          ? null
          : map['publicRepository'] as String,
    );
  }
}
