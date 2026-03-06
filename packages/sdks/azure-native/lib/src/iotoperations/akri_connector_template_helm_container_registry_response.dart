// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_container_registry_settings_response.dart';

/// AkriConnectorTemplateHelmContainerRegistry properties.
class AkriConnectorTemplateHelmContainerRegistryResponse {
  /// The registry settings for the container registry.
  final pulumi.Input<AkriConnectorTemplateHelmContainerRegistrySettingsResponse> containerRegistrySettings;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'ContainerRegistry'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistryResponse].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  const AkriConnectorTemplateHelmContainerRegistryResponse({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': pulumi.Input.mapInputValue<AkriConnectorTemplateHelmContainerRegistrySettingsResponse, Map<String, dynamic>>(containerRegistrySettings, (value) => value.toMap()),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistryResponse(
      containerRegistrySettings: pulumi.Input.fromValue(AkriConnectorTemplateHelmContainerRegistrySettingsResponse.fromMap((map['containerRegistrySettings']! as Map).cast<String, dynamic>())),
      registrySettingsType: pulumi.Input.fromValue(map['registrySettingsType'] as String),
    );
  }
}

