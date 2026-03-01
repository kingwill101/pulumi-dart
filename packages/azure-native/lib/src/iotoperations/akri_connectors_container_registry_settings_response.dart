// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_image_pull_secret_response.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistrySettingsResponse {
  /// Optional list of references to secrets in the same namespace to use for pulling the connector image.
  final List<AkriConnectorsImagePullSecretResponse>? imagePullSecrets;
  /// The container registry to use for the artifact.
  final String registry;

  /// Creates a new [AkriConnectorsContainerRegistrySettingsResponse].
  /// [imagePullSecrets] Optional list of references to secrets in the same namespace to use for pulling the connector image.
  /// [registry] The container registry to use for the artifact.
  AkriConnectorsContainerRegistrySettingsResponse({
    this.imagePullSecrets,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagePullSecrets': ?imagePullSecrets == null ? null : pulumi.Input.encodeList<AkriConnectorsImagePullSecretResponse, Map<String, dynamic>>(imagePullSecrets!, (value) => value.toMap()),
      'registry': registry,
    };
  }

  factory AkriConnectorsContainerRegistrySettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistrySettingsResponse(
      imagePullSecrets: map['imagePullSecrets'] == null ? null : pulumi.Input.decodeList<AkriConnectorsImagePullSecretResponse>(map['imagePullSecrets'], (value) => AkriConnectorsImagePullSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      registry: map['registry'] as String,
    );
  }
}

