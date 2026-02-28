// ignore_for_file: unused_element, unnecessary_cast

import 'config_map_key_selector_response.dart';
import 'secret_key_selector_response.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSourceResponse {
  /// Not supported by Cloud Run. Not supported in Cloud Run.
  final ConfigMapKeySelectorResponse configMapKeyRef;
  /// Selects a key (version) of a secret in Secret Manager.
  final SecretKeySelectorResponse secretKeyRef;

  /// Creates a new [EnvVarSourceResponse].
  /// [configMapKeyRef] Not supported by Cloud Run. Not supported in Cloud Run.
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  EnvVarSourceResponse({
    required this.configMapKeyRef,
    required this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': configMapKeyRef.toMap(),
      'secretKeyRef': secretKeyRef.toMap(),
    };
  }

  factory EnvVarSourceResponse.fromMap(Map<String, dynamic> map) {
    return EnvVarSourceResponse(
      configMapKeyRef: ConfigMapKeySelectorResponse.fromMap((map['configMapKeyRef'] as Map).cast<String, dynamic>()),
      secretKeyRef: SecretKeySelectorResponse.fromMap((map['secretKeyRef'] as Map).cast<String, dynamic>()),
    );
  }
}

