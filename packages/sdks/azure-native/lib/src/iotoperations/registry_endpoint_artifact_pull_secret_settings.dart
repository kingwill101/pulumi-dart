// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RegistryEndpoint Artifact Pull Secret authentication properties
class RegistryEndpointArtifactPullSecretSettings {
  /// The name of the kubernetes secret that contains the artifact pull secret.
  final pulumi.Input<String> secretRef;

  /// Creates a new [RegistryEndpointArtifactPullSecretSettings].
  /// [secretRef] The name of the kubernetes secret that contains the artifact pull secret.
  RegistryEndpointArtifactPullSecretSettings({required this.secretRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretRef': secretRef};
  }

  factory RegistryEndpointArtifactPullSecretSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistryEndpointArtifactPullSecretSettings(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
