import 'package:pulumi/pulumi.dart' as pulumi;

/// Runtime configuration type for the Connector template.
enum AkriConnectorTemplateRuntimeConfigurationType implements pulumi.PulumiEnum<String> {
  helmConfiguration("HelmConfiguration"),
  managedConfiguration("ManagedConfiguration");

  const AkriConnectorTemplateRuntimeConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorTemplateRuntimeConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateRuntimeConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateRuntimeConfigurationType value: $value');
  }
}
