/// Private IP address allocation method.
enum IpAllocationMethod {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IpAllocationMethod(this.wireValue);
  final String wireValue;

  static IpAllocationMethod fromValue(String value) {
    for (final item in IpAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationMethod value: $value');
  }
}

