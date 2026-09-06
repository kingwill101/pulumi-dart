import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateHelmRegistrySettingsType values.
enum AkriConnectorTemplateHelmRegistrySettingsType implements pulumi.PulumiEnum<String> {
  registryEndpointRef("RegistryEndpointRef"),
  containerRegistry("ContainerRegistry");

  const AkriConnectorTemplateHelmRegistrySettingsType(this.wireValue);
  @override
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
