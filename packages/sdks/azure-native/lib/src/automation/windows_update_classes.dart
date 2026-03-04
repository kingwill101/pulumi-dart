/// Update classification included in the software update configuration. A comma separated string with required values
enum WindowsUpdateClasses {
  valueUnclassified("Unclassified"),
  valueCritical("Critical"),
  valueSecurity("Security"),
  valueUpdateRollup("UpdateRollup"),
  valueFeaturePack("FeaturePack"),
  valueServicePack("ServicePack"),
  valueDefinition("Definition"),
  valueTools("Tools"),
  valueUpdates("Updates");

  const WindowsUpdateClasses(this.wireValue);
  final String wireValue;

  static WindowsUpdateClasses fromValue(String value) {
    for (final item in WindowsUpdateClasses.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsUpdateClasses value: $value');
  }
}
