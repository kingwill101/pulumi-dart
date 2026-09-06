import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsRegistrySettings properties.
enum AkriConnectorsRegistrySettingsType implements pulumi.PulumiEnum<String> {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorsRegistrySettingsType(this.wireValue);
  @override
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
