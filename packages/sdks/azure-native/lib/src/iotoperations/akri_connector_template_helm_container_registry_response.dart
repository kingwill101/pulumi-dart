// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_container_registry_settings_response.dart';

/// AkriConnectorTemplateHelmContainerRegistry properties.
class AkriConnectorTemplateHelmContainerRegistryResponse {
  /// The registry settings for the container registry.
  final AkriConnectorTemplateHelmContainerRegistrySettingsResponse containerRegistrySettings;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'ContainerRegistry'.
  final String registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistryResponse].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  AkriConnectorTemplateHelmContainerRegistryResponse({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': containerRegistrySettings.toMap(),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistryResponse(
      containerRegistrySettings: AkriConnectorTemplateHelmContainerRegistrySettingsResponse.fromMap((map['containerRegistrySettings'] as Map).cast<String, dynamic>()),
      registrySettingsType: map['registrySettingsType'] as String,
    );
  }
}

