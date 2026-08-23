/// AkriConnectorTemplateHelmRegistrySettingsType values.
enum AkriConnectorTemplateHelmRegistrySettingsType {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorTemplateHelmRegistrySettingsType(this.wireValue);
  final String wireValue;

  static AkriConnectorTemplateHelmRegistrySettingsType fromValue(String value) {
    for (final item in AkriConnectorTemplateHelmRegistrySettingsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateHelmRegistrySettingsType value: $value');
  }
}
