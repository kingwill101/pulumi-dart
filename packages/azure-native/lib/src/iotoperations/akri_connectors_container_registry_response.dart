// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_container_registry_settings_response.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistryResponse {
  /// The registry settings for the container registry.
  final AkriConnectorsContainerRegistrySettingsResponse containerRegistrySettings;
  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'ContainerRegistry'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorsContainerRegistryResponse].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  AkriConnectorsContainerRegistryResponse({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': containerRegistrySettings.toMap(),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistryResponse(
      containerRegistrySettings: AkriConnectorsContainerRegistrySettingsResponse.fromMap((map['containerRegistrySettings'] as Map).cast<String, dynamic>()),
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

