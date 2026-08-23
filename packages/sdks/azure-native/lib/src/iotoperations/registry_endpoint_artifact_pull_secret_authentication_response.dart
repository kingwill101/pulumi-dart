// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_artifact_pull_secret_settings_response.dart';

/// Artifact Pull Secret authentication
class RegistryEndpointArtifactPullSecretAuthenticationResponse {
  /// Artifact Pull Secret authentication properties
  final pulumi.Input<RegistryEndpointArtifactPullSecretSettingsResponse> artifactPullSecretSettings;
  /// The authentication method.
  /// Expected value is 'ArtifactPullSecret'.
  final pulumi.Input<String> method;

  /// Creates a new [RegistryEndpointArtifactPullSecretAuthenticationResponse].
  /// [artifactPullSecretSettings] Artifact Pull Secret authentication properties
  /// [method] The authentication method.
  const RegistryEndpointArtifactPullSecretAuthenticationResponse({
    required this.artifactPullSecretSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactPullSecretSettings': pulumi.Input.mapInputValue<RegistryEndpointArtifactPullSecretSettingsResponse, Map<String, dynamic>>(artifactPullSecretSettings, (value) => value.toMap()),
      'method': method,
    };
  }

  factory RegistryEndpointArtifactPullSecretAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointArtifactPullSecretAuthenticationResponse(
      artifactPullSecretSettings: pulumi.Input.fromValue(RegistryEndpointArtifactPullSecretSettingsResponse.fromMap((map['artifactPullSecretSettings']! as Map).cast<String, dynamic>())),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}
