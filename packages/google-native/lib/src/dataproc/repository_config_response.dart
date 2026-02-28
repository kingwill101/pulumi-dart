// ignore_for_file: unused_element, unnecessary_cast

import 'py_pi_repository_config_response.dart';

/// Configuration for dependency repositories
class RepositoryConfigResponse {
  /// Optional. Configuration for PyPi repository.
  final PyPiRepositoryConfigResponse pypiRepositoryConfig;

  /// Creates a new [RepositoryConfigResponse].
  /// [pypiRepositoryConfig] Optional. Configuration for PyPi repository.
  RepositoryConfigResponse({
    required this.pypiRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepositoryConfig': pypiRepositoryConfig.toMap(),
    };
  }

  factory RepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryConfigResponse(
      pypiRepositoryConfig: PyPiRepositoryConfigResponse.fromMap((map['pypiRepositoryConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

