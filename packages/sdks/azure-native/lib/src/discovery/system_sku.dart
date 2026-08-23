/// The SKU to use for the system node pool.
enum SystemSku {
  standardD4sV6("Standard_D4s_v6"),
  standardD4sV5("Standard_D4s_v5"),
  standardD4sV4("Standard_D4s_v4");

  const SystemSku(this.wireValue);
  final String wireValue;

  static SystemSku fromValue(String value) {
    for (final item in SystemSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SystemSku value: $value');
  }
}
