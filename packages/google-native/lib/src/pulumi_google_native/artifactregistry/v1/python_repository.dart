// ignore_for_file: unused_element, unnecessary_cast

import 'python_repository_public_repository.dart';

/// Configuration for a Python remote repository.
class PythonRepository {
  /// One of the publicly available Python repositories supported by Artifact Registry.
  final PythonRepositoryPublicRepository? publicRepository;

  PythonRepository({
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

  factory PythonRepository.fromMap(Map<String, dynamic> map) {
    return PythonRepository(
      publicRepository: map['publicRepository'] == null
          ? null
          : PythonRepositoryPublicRepository.fromValue(
              map['publicRepository'] as String),
    );
  }
}
