// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_artifact_pull_secret_settings.dart';

/// Artifact Pull Secret authentication
class RegistryEndpointArtifactPullSecretAuthentication {
  /// Artifact Pull Secret authentication properties
  final pulumi.Input<RegistryEndpointArtifactPullSecretSettings> artifactPullSecretSettings;
  /// The authentication method.
  /// Expected value is 'ArtifactPullSecret'.
  final pulumi.Input<String> method;

  /// Creates a new [RegistryEndpointArtifactPullSecretAuthentication].
  /// [artifactPullSecretSettings] Artifact Pull Secret authentication properties
  /// [method] The authentication method.
  RegistryEndpointArtifactPullSecretAuthentication({
    required this.artifactPullSecretSettings,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactPullSecretSettings': pulumi.Input.mapInputValue<RegistryEndpointArtifactPullSecretSettings, Map<String, dynamic>>(artifactPullSecretSettings, (value) => value.toMap()),
      'method': method,
    };
  }

  factory RegistryEndpointArtifactPullSecretAuthentication.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointArtifactPullSecretAuthentication(
      artifactPullSecretSettings: pulumi.Input.fromValue(RegistryEndpointArtifactPullSecretSettings.fromMap((map['artifactPullSecretSettings']! as Map).cast<String, dynamic>())),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}

