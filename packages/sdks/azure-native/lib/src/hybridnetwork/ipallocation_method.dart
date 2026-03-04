/// IP address allocation method.
enum IPAllocationMethod {
  valueUnknown("Unknown"),
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IPAllocationMethod(this.wireValue);
  final String wireValue;

  static IPAllocationMethod fromValue(String value) {
    for (final item in IPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationMethod value: $value');
  }
}
