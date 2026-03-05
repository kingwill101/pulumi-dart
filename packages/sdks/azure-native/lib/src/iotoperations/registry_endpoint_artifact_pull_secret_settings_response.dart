// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RegistryEndpoint Artifact Pull Secret authentication properties
class RegistryEndpointArtifactPullSecretSettingsResponse {
  /// The name of the kubernetes secret that contains the artifact pull secret.
  final pulumi.Input<String> secretRef;

  /// Creates a new [RegistryEndpointArtifactPullSecretSettingsResponse].
  /// [secretRef] The name of the kubernetes secret that contains the artifact pull secret.
  RegistryEndpointArtifactPullSecretSettingsResponse({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory RegistryEndpointArtifactPullSecretSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointArtifactPullSecretSettingsResponse(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}

