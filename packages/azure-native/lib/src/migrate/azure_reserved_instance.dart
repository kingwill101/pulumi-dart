/// Reserved instance.
enum AzureReservedInstance {
  valueNone("None"),
  valueRI1Year("RI1Year"),
  valueRI3Year("RI3Year");

  const AzureReservedInstance(this.value);
  final String value;

  static AzureReservedInstance fromValue(String value) {
    for (final item in AzureReservedInstance.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureReservedInstance value: $value');
  }
}

