/// vnet or vwan, cannot be updated
enum NetworkType {
  valueVNET("VNET"),
  valueVWAN("VWAN");

  const NetworkType(this.wireValue);
  final String wireValue;

  static NetworkType fromValue(String value) {
    for (final item in NetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkType value: $value');
  }
}
