/// AkriConnectorTemplateHelmRegistrySettingsType values.
enum AkriConnectorTemplateHelmRegistrySettingsType {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorTemplateHelmRegistrySettingsType(this.value);
  final String value;

  static AkriConnectorTemplateHelmRegistrySettingsType fromValue(String value) {
    for (final item in AkriConnectorTemplateHelmRegistrySettingsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateHelmRegistrySettingsType value: $value');
  }
}

