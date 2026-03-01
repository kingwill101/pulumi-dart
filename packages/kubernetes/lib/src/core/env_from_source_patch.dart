// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_env_source_patch.dart';
import 'secret_env_source_patch.dart';

/// EnvFromSource represents the source of a set of ConfigMaps or Secrets
class EnvFromSourcePatch {
  /// The ConfigMap to select from
  final ConfigMapEnvSourcePatch? configMapRef;
  /// Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except '='.
  final String? prefix;
  /// The Secret to select from
  final SecretEnvSourcePatch? secretRef;

  /// Creates a new [EnvFromSourcePatch].
  /// [configMapRef] The ConfigMap to select from
  /// [prefix] Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except '='.
  /// [secretRef] The Secret to select from
  EnvFromSourcePatch({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': ?configMapRef == null ? null : configMapRef!.toMap(),
      'prefix': ?prefix,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
    };
  }

  factory EnvFromSourcePatch.fromMap(Map<String, dynamic> map) {
    return EnvFromSourcePatch(
      configMapRef: map['configMapRef'] == null ? null : ConfigMapEnvSourcePatch.fromMap((map['configMapRef'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      secretRef: map['secretRef'] == null ? null : SecretEnvSourcePatch.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
    );
  }
}

