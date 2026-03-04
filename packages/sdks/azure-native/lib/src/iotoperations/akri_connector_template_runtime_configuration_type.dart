/// Runtime configuration type for the Connector template.
enum AkriConnectorTemplateRuntimeConfigurationType {
  helmConfiguration("HelmConfiguration"),
  managedConfiguration("ManagedConfiguration");

  const AkriConnectorTemplateRuntimeConfigurationType(this.wireValue);
  final String wireValue;

  static AkriConnectorTemplateRuntimeConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateRuntimeConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AkriConnectorTemplateRuntimeConfigurationType value: $value',
    );
  }
}
