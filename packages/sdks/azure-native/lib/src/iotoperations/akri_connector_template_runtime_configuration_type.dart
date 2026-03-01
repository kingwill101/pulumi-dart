/// Runtime configuration type for the Connector template.
enum AkriConnectorTemplateRuntimeConfigurationType {
  helmConfiguration("HelmConfiguration"),
  managedConfiguration("ManagedConfiguration");

  const AkriConnectorTemplateRuntimeConfigurationType(this.value);
  final String value;

  static AkriConnectorTemplateRuntimeConfigurationType fromValue(String value) {
    for (final item in AkriConnectorTemplateRuntimeConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorTemplateRuntimeConfigurationType value: $value');
  }
}

