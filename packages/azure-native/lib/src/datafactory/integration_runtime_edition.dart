/// The edition for the SSIS Integration Runtime
enum IntegrationRuntimeEdition {
  valueStandard("Standard"),
  valueEnterprise("Enterprise");

  const IntegrationRuntimeEdition(this.value);
  final String value;

  static IntegrationRuntimeEdition fromValue(String value) {
    for (final item in IntegrationRuntimeEdition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeEdition value: $value');
  }
}

