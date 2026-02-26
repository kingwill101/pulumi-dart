// ignore_for_file: unused_element, unnecessary_cast

import '../environment_client_ip_resolution_config_header_index_algorithm/environment_client_ip_resolution_config_header_index_algorithm.dart';

class EnvironmentClientIpResolutionConfig {
  /// Resolves the client ip based on a custom header.
  /// Structure is documented below.
  final EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm?
      headerIndexAlgorithm;

  EnvironmentClientIpResolutionConfig({
    this.headerIndexAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerIndexAlgorithmValue = headerIndexAlgorithm;
    if (headerIndexAlgorithmValue != null) {
      map['headerIndexAlgorithm'] = headerIndexAlgorithmValue.toMap();
    }
    return map;
  }

  factory EnvironmentClientIpResolutionConfig.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentClientIpResolutionConfig(
      headerIndexAlgorithm: map['headerIndexAlgorithm'] == null
          ? null
          : EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm.fromMap(
              (map['headerIndexAlgorithm'] as Map).cast<String, dynamic>()),
    );
  }
}
