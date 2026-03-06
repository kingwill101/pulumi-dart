// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_container_registry_settings.dart';

/// AkriConnectorTemplateHelmContainerRegistry properties.
class AkriConnectorTemplateHelmContainerRegistry {
  /// The registry settings for the container registry.
  final pulumi.Input<AkriConnectorTemplateHelmContainerRegistrySettings> containerRegistrySettings;
  /// AkriConnectorTemplateHelmRegistrySettingsType values.
  /// Expected value is 'ContainerRegistry'.
  final pulumi.Input<String> registrySettingsType;

  /// Creates a new [AkriConnectorTemplateHelmContainerRegistry].
  /// [containerRegistrySettings] The registry settings for the container registry.
  /// [registrySettingsType] AkriConnectorTemplateHelmRegistrySettingsType values.
  const AkriConnectorTemplateHelmContainerRegistry({
    required this.containerRegistrySettings,
    required this.registrySettingsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistrySettings': pulumi.Input.mapInputValue<AkriConnectorTemplateHelmContainerRegistrySettings, Map<String, dynamic>>(containerRegistrySettings, (value) => value.toMap()),
      'registrySettingsType': registrySettingsType,
    };
  }

  factory AkriConnectorTemplateHelmContainerRegistry.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmContainerRegistry(
      containerRegistrySettings: pulumi.Input.fromValue(AkriConnectorTemplateHelmContainerRegistrySettings.fromMap((map['containerRegistrySettings']! as Map).cast<String, dynamic>())),
      registrySettingsType: pulumi.Input.fromValue(map['registrySettingsType'] as String),
    );
  }
}

