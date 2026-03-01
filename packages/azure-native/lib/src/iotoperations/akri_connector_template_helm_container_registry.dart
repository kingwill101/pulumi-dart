// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_container_registry_settings.dart';

/// AkriConnectorTemplateHelmContainerRegistry properties.
class AkriConnectorTemplateHelmContainerRegistry {
  /// The registry settings for the container registry.
  final AkriConnectorTemplateHelmContainerRegistrySettings containerRegistrySettings;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'ContainerRegistry'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistry].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  AkriConnectorTemplateHelmContainerRegistry({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': containerRegistrySettings.toMap(),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistry.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistry(
      containerRegistrySettings: AkriConnectorTemplateHelmContainerRegistrySettings.fromMap((map['containerRegistrySettings'] as Map).cast<String, dynamic>()),
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

