// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_key_selector.dart';
import 'secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// Not supported by Cloud Run. Not supported in Cloud Run.
  final ConfigMapKeySelector? configMapKeyRef;

  /// Selects a key (version) of a secret in Secret Manager.
  final SecretKeySelector? secretKeyRef;

  /// Creates a new [EnvVarSource].
  /// [configMapKeyRef] Not supported by Cloud Run. Not supported in Cloud Run.
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  EnvVarSource({this.configMapKeyRef, this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': ?configMapKeyRef == null
          ? null
          : configMapKeyRef!.toMap(),
      'secretKeyRef': ?secretKeyRef == null ? null : secretKeyRef!.toMap(),
    };
  }

  factory EnvVarSource.fromMap(Map<String, dynamic> map) {
    return EnvVarSource(
      configMapKeyRef: map['configMapKeyRef'] == null
          ? null
          : ConfigMapKeySelector.fromMap(
              (map['configMapKeyRef'] as Map).cast<String, dynamic>(),
            ),
      secretKeyRef: map['secretKeyRef'] == null
          ? null
          : SecretKeySelector.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
