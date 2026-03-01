// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2EnvVarSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final GoogleCloudRunV2SecretKeySelector? secretKeyRef;

  /// Creates a new [GoogleCloudRunV2EnvVarSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  GoogleCloudRunV2EnvVarSource({this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?secretKeyRef == null ? null : secretKeyRef!.toMap(),
    };
  }

  factory GoogleCloudRunV2EnvVarSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EnvVarSource(
      secretKeyRef: map['secretKeyRef'] == null
          ? null
          : GoogleCloudRunV2SecretKeySelector.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
