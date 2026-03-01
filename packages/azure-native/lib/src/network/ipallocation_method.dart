/// The private IP address allocation method.
enum IPAllocationMethod {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IPAllocationMethod(this.value);
  final String value;

  static IPAllocationMethod fromValue(String value) {
    for (final item in IPAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationMethod value: $value');
  }
}

