/// Reserved instance.
enum AzureReservedInstance {
  valueNone("None"),
  valueRI1Year("RI1Year"),
  valueRI3Year("RI3Year");

  const AzureReservedInstance(this.wireValue);
  final String wireValue;

  static AzureReservedInstance fromValue(String value) {
    for (final item in AzureReservedInstance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureReservedInstance value: $value');
  }
}
