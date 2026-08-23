/// Specifies whether the Auxiliary sku is enabled for the Network Interface
/// resource.
enum NetworkInterfaceAuxiliarySku {
  none("None"),
  a1("A1"),
  a2("A2"),
  a4("A4"),
  a8("A8");

  const NetworkInterfaceAuxiliarySku(this.wireValue);
  final String wireValue;

  static NetworkInterfaceAuxiliarySku fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliarySku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliarySku value: $value');
  }
}
