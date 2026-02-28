// ignore_for_file: unused_element, unnecessary_cast

import 'py_pi_repository_config.dart';

/// Configuration for dependency repositories
class RepositoryConfig {
  /// Optional. Configuration for PyPi repository.
  final PyPiRepositoryConfig? pypiRepositoryConfig;

  /// Creates a new [RepositoryConfig].
  /// [pypiRepositoryConfig] Optional. Configuration for PyPi repository.
  RepositoryConfig({
    this.pypiRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pypiRepositoryConfigValue = pypiRepositoryConfig;
    if (pypiRepositoryConfigValue != null) {
      map['pypiRepositoryConfig'] = pypiRepositoryConfigValue.toMap();
    }
    return map;
  }

  factory RepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryConfig(
      pypiRepositoryConfig: map['pypiRepositoryConfig'] == null
          ? null
          : PyPiRepositoryConfig.fromMap(
              (map['pypiRepositoryConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
