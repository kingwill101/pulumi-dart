// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_container_registry_settings_response.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistryResponse {
  /// The registry settings for the container registry.
  final pulumi.Input<AkriConnectorsContainerRegistrySettingsResponse> containerRegistrySettings;
  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'ContainerRegistry'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorsContainerRegistryResponse].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  const AkriConnectorsContainerRegistryResponse({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': pulumi.Input.mapInputValue<AkriConnectorsContainerRegistrySettingsResponse, Map<String, dynamic>>(containerRegistrySettings, (value) => value.toMap()),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistryResponse(
      containerRegistrySettings: pulumi.Input.fromValue(AkriConnectorsContainerRegistrySettingsResponse.fromMap((map['containerRegistrySettings']! as Map).cast<String, dynamic>())),
      registrySettingsType: pulumi.Input.fromValue(map['registrySettingsType'] as String),
    );
  }
}
