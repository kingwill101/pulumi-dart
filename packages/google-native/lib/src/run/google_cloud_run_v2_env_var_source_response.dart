// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_secret_key_selector_response.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2EnvVarSourceResponse {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final GoogleCloudRunV2SecretKeySelectorResponse secretKeyRef;

  /// Creates a new [GoogleCloudRunV2EnvVarSourceResponse].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  GoogleCloudRunV2EnvVarSourceResponse({required this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretKeyRef': secretKeyRef.toMap()};
  }

  factory GoogleCloudRunV2EnvVarSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2EnvVarSourceResponse(
      secretKeyRef: GoogleCloudRunV2SecretKeySelectorResponse.fromMap(
        (map['secretKeyRef'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
