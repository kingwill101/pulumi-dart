// ignore_for_file: unused_element, unnecessary_cast

import 'environment_client_ip_resolution_config_header_index_algorithm.dart';

class EnvironmentClientIpResolutionConfig {
  /// Resolves the client ip based on a custom header.
  /// Structure is documented below.
  final EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm? headerIndexAlgorithm;

  /// Creates a new [EnvironmentClientIpResolutionConfig].
  /// [headerIndexAlgorithm] Resolves the client ip based on a custom header.
  EnvironmentClientIpResolutionConfig({
    this.headerIndexAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerIndexAlgorithm': ?headerIndexAlgorithm == null ? null : headerIndexAlgorithm!.toMap(),
    };
  }

  factory EnvironmentClientIpResolutionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentClientIpResolutionConfig(
      headerIndexAlgorithm: map['headerIndexAlgorithm'] == null ? null : EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm.fromMap((map['headerIndexAlgorithm'] as Map).cast<String, dynamic>()),
    );
  }
}

