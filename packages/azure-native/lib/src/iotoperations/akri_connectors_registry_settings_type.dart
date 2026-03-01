/// AkriConnectorsRegistrySettings properties.
enum AkriConnectorsRegistrySettingsType {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorsRegistrySettingsType(this.value);
  final String value;

  static AkriConnectorsRegistrySettingsType fromValue(String value) {
    for (final item in AkriConnectorsRegistrySettingsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsRegistrySettingsType value: $value');
  }
}

