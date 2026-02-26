// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_env_source_response.dart';
import 'secret_env_source_response.dart';

/// Not supported by Cloud Run. EnvFromSource represents the source of a set of ConfigMaps
class EnvFromSourceResponse {
  /// The ConfigMap to select from
  final ConfigMapEnvSourceResponse configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final String prefix;

  /// The Secret to select from
  final SecretEnvSourceResponse secretRef;

  EnvFromSourceResponse({
    required this.configMapRef,
    required this.prefix,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configMapRef'] = configMapRef.toMap();
    map['prefix'] = prefix;
    map['secretRef'] = secretRef.toMap();
    return map;
  }

  factory EnvFromSourceResponse.fromMap(Map<String, dynamic> map) {
    return EnvFromSourceResponse(
      configMapRef: ConfigMapEnvSourceResponse.fromMap(
          (map['configMapRef'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] as String,
      secretRef: SecretEnvSourceResponse.fromMap(
          (map['secretRef'] as Map).cast<String, dynamic>()),
    );
  }
}
