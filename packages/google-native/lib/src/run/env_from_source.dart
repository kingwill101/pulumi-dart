// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_env_source.dart';
import 'secret_env_source.dart';

/// Not supported by Cloud Run. EnvFromSource represents the source of a set of ConfigMaps
class EnvFromSource {
  /// The ConfigMap to select from
  final ConfigMapEnvSource? configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final String? prefix;

  /// The Secret to select from
  final SecretEnvSource? secretRef;

  /// Creates a new [EnvFromSource].
  /// [configMapRef] The ConfigMap to select from
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  /// [secretRef] The Secret to select from
  EnvFromSource({this.configMapRef, this.prefix, this.secretRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': ?configMapRef == null ? null : configMapRef!.toMap(),
      'prefix': ?prefix,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
    };
  }

  factory EnvFromSource.fromMap(Map<String, dynamic> map) {
    return EnvFromSource(
      configMapRef: map['configMapRef'] == null
          ? null
          : ConfigMapEnvSource.fromMap(
              (map['configMapRef'] as Map).cast<String, dynamic>(),
            ),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      secretRef: map['secretRef'] == null
          ? null
          : SecretEnvSource.fromMap(
              (map['secretRef'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
