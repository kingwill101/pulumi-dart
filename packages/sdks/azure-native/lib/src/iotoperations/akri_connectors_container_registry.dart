// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_container_registry_settings.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistry {
  /// The registry settings for the container registry.
  final AkriConnectorsContainerRegistrySettings containerRegistrySettings;
  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'ContainerRegistry'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorsContainerRegistry].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  AkriConnectorsContainerRegistry({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': containerRegistrySettings.toMap(),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsContainerRegistry.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistry(
      containerRegistrySettings: AkriConnectorsContainerRegistrySettings.fromMap((map['containerRegistrySettings'] as Map).cast<String, dynamic>()),
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

