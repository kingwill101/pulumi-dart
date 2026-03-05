/// The method that private IP address is allocated.
enum PrivateIPAllocationMethod {
  valueDynamic("dynamic"),
  valueStatic("static");

  const PrivateIPAllocationMethod(this.wireValue);
  final String wireValue;

  static PrivateIPAllocationMethod fromValue(String value) {
    for (final item in PrivateIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateIPAllocationMethod value: $value');
  }
}

