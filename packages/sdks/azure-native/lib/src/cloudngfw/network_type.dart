/// vnet or vwan, cannot be updated
enum NetworkType {
  valueVNET("VNET"),
  valueVWAN("VWAN");

  const NetworkType(this.value);
  final String value;

  static NetworkType fromValue(String value) {
    for (final item in NetworkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkType value: $value');
  }
}

