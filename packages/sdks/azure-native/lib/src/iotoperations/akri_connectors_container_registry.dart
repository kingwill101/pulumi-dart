// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_container_registry_settings.dart';

/// AkriConnectorsContainerRegistry properties.
class AkriConnectorsContainerRegistry {
  /// The registry settings for the container registry.
  final pulumi.Input<AkriConnectorsContainerRegistrySettings>
  containerRegistrySettings;

  /// AkriConnectorsRegistrySettings properties.
  /// Expected value is 'ContainerRegistry'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorsContainerRegistry].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorsRegistrySettings properties.
  AkriConnectorsContainerRegistry({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings':
          pulumi.Input.mapInputValue<
            AkriConnectorsContainerRegistrySettings,
            Map<String, dynamic>
          >(containerRegistrySettings, (value) => value.toMap()),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorsContainerRegistry.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsContainerRegistry(
      containerRegistrySettings: pulumi.Input.fromValue(
        AkriConnectorsContainerRegistrySettings.fromMap(
          (map['containerRegistrySettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      registrySettingsType: pulumi.Input.fromValue(
        map['registrySettingsType'] as String,
      ),
    );
  }
}
