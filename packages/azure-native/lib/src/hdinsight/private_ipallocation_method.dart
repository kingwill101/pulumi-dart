/// The method that private IP address is allocated.
enum PrivateIPAllocationMethod {
  valueDynamic("dynamic"),
  valueStatic("static");

  const PrivateIPAllocationMethod(this.value);
  final String value;

  static PrivateIPAllocationMethod fromValue(String value) {
    for (final item in PrivateIPAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateIPAllocationMethod value: $value');
  }
}

