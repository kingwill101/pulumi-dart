// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_artifact_pull_secret_settings.dart';

/// Artifact Pull Secret authentication
class RegistryEndpointArtifactPullSecretAuthentication {
  /// Artifact Pull Secret authentication properties
  final RegistryEndpointArtifactPullSecretSettings artifactPullSecretSettings;
  /// The authentication method.
  /// Expected value is 'ArtifactPullSecret'.
  final String method;

  /// Creates a new [RegistryEndpointArtifactPullSecretAuthentication].
  /// [artifactPullSecretSettings] Artifact Pull Secret authentication properties
  /// [method] The authentication method.
  RegistryEndpointArtifactPullSecretAuthentication({
    required this.artifactPullSecretSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactPullSecretSettings': artifactPullSecretSettings.toMap(),
      'method': method,
    };
  }

  factory RegistryEndpointArtifactPullSecretAuthentication.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointArtifactPullSecretAuthentication(
      artifactPullSecretSettings: RegistryEndpointArtifactPullSecretSettings.fromMap((map['artifactPullSecretSettings'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
    );
  }
}

