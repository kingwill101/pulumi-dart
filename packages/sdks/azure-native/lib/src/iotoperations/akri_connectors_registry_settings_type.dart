/// AkriConnectorsRegistrySettings properties.
enum AkriConnectorsRegistrySettingsType {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorsRegistrySettingsType(this.wireValue);
  final String wireValue;

  static AkriConnectorsRegistrySettingsType fromValue(String value) {
    for (final item in AkriConnectorsRegistrySettingsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsRegistrySettingsType value: $value');
  }
}

