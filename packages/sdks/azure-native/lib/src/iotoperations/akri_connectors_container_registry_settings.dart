// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_image_pull_secret.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistrySettings {
  /// Optional list of references to secrets in the same namespace to use for pulling the connector image.
  final pulumi.Input<List<AkriConnectorsImagePullSecret>?>? imagePullSecrets;
  /// The container registry to use for the artifact.
  final pulumi.Input<String> registry;

  /// Creates a new [AkriConnectorsContainerRegistrySettings].
  /// [imagePullSecrets] Optional list of references to secrets in the same namespace to use for pulling the connector image.
  /// [registry] The container registry to use for the artifact.
  const AkriConnectorsContainerRegistrySettings({
    this.imagePullSecrets,
    required this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagePullSecrets': ?pulumi.Input.mapOptionalInputValue<List<AkriConnectorsImagePullSecret>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<AkriConnectorsImagePullSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registry': registry,
    };
  }

  factory AkriConnectorsContainerRegistrySettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistrySettings(
      imagePullSecrets: (() { final guardedValue = map['imagePullSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorsImagePullSecret>(guardedValue, (value) => AkriConnectorsImagePullSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registry: pulumi.Input.fromValue(map['registry'] as String),
    );
  }
}
