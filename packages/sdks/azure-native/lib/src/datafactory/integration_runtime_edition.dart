/// The edition for the SSIS Integration Runtime
enum IntegrationRuntimeEdition {
  standard("Standard"),
  enterprise("Enterprise");

  const IntegrationRuntimeEdition(this.wireValue);
  final String wireValue;

  static IntegrationRuntimeEdition fromValue(String value) {
    for (final item in IntegrationRuntimeEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeEdition value: $value');
  }
}
