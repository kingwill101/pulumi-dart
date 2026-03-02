// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_image_pull_secret_response.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistrySettingsResponse {
  /// Optional list of references to secrets in the same namespace to use for pulling the connector image.
  final pulumi.Input<List<AkriConnectorsImagePullSecretResponse>>? imagePullSecrets;
  /// The container registry to use for the artifact.
  final pulumi.Input<String> registry;

  /// Creates a new [AkriConnectorsContainerRegistrySettingsResponse].
  /// [imagePullSecrets] Optional list of references to secrets in the same namespace to use for pulling the connector image.
  /// [registry] The container registry to use for the artifact.
  AkriConnectorsContainerRegistrySettingsResponse({
    this.imagePullSecrets,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagePullSecrets': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorsImagePullSecretResponse>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<AkriConnectorsImagePullSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registry': registry,
    };
  }

  factory AkriConnectorsContainerRegistrySettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistrySettingsResponse(
      imagePullSecrets: map['imagePullSecrets'] == null ? null : (pulumi.Input.decodeList<AkriConnectorsImagePullSecretResponse>(map['imagePullSecrets']!, (value) => AkriConnectorsImagePullSecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      registry: (map['registry'] as String).input(),
    );
  }
}

